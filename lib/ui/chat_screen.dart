
import 'package:flutter/material.dart';
import 'package:messenger_app/models/messenger_model.dart';
import 'package:messenger_app/models/user_model.dart';
import 'package:messenger_app/ui/widgets/message_chat_widget.dart';

class ChatScreen extends StatefulWidget {
  List<Message> messages;
  User user;

  ChatScreen({
    this.messages,
    this.user
  });

  @override
  State<StatefulWidget> createState() => _ChatScreenState();

}

_buildMessageComposer(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    height: 70.0,
    color: Colors.white,
    child: Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.photo),
          iconSize: 15.0,
          color: Colors.red,
          onPressed: () {},
        ),
        Expanded(
          child: TextField(
            onChanged: (values) {
            },
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration.collapsed(
              hintText: 'send message...'
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send),
          iconSize: 15.0,
          color: Colors.red,
          onPressed: () {},
        ),

      ],
    ),
  );
}
class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () =>
            Navigator.pop(context)
          ,
        ),
        title: Text(
          widget.user.name,
          style: (TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0
          )),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                  )
                ),
                child: MessageChat(
                  messages: widget.messages,
                )
              ),
            ),
            _buildMessageComposer()
          ],
        ),
      ),
    );
  }

}