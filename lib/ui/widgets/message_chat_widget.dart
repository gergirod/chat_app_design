import 'package:flutter/material.dart';
import 'package:messenger_app/models/messenger_model.dart';

class MessageChat extends StatefulWidget {
  List<Message> messages;

  MessageChat({this.messages});

  @override
  State<StatefulWidget> createState() => _MessageChatState();
}

class _MessageChatState extends State<MessageChat> {
  _buildMessage(Message message, bool isMe) {
    final Container  msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      decoration: BoxDecoration(
          color: isMe ? Theme.of(context).accentColor : Color(0XFFFFEFEE),
          borderRadius: isMe ? BorderRadius.only(
              topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0))
              :BorderRadius.only(
              bottomRight: Radius.circular(15.0), topRight: Radius.circular(15.0))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              message.time,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0
              )),
          SizedBox(
            height: 10.0,
          ),
          Text(
            message.text,
            style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600,
                fontSize: 16.0
            ),
          ),
        ],
      ),
    );

    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
          icon: message.isLiked ?
            Icon(Icons.favorite):
            Icon(Icons.favorite_border),
          iconSize: 30.0,
          color: message.isLiked
              ? Theme.of(context).primaryColor
              : Colors.blueGrey,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
      child: ListView.builder(
          reverse: true,
          padding: EdgeInsets.only(top: 15.0),
          scrollDirection: Axis.vertical,
          itemCount: widget.messages.length,
          itemBuilder: (BuildContext context, int index) {
            Message message = widget.messages[index];
            bool isMe = message.user.id == 0;
            return _buildMessage(message, isMe);
          }),
    );
  }
}
