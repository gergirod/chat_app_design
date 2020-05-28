import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/ui/widgets/category_widget.dart';
import 'package:messenger_app/ui/widgets/favorite_contacts_widget.dart';
import 'package:messenger_app/ui/widgets/home_chats_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Chats',
          style: (TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0)),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: <Widget>[FavoriteContacts(), HomeChat()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
