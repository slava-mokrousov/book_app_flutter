import 'package:book_app/widgets/recent_chats.dart';
import 'package:book_app/widgets/recently_added.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Color(0xFFF66EB4), Color(0xFFFEB665)]),
            borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 12.0)),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.white,
        ),
        centerTitle: true,
        bottom:
            PreferredSize(child: Container(), preferredSize: Size(50.0, 50.0)),
        title: Text(
          'My Friends',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Circular Std;',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFEEECFF), Color(0xFFFFFFFF)])),
              child: Column(
                children: <Widget>[
                  RecentlyAdded(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
