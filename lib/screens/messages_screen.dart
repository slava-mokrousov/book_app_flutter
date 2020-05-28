import 'package:book_app/models/message_model.dart';
import 'package:book_app/models/user_model.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final User user;

  MessagesScreen({this.user});

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  _buildMessage(Message message, bool isMe) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: Container(
            margin: isMe
                ? EdgeInsets.only(
                    top: 8.0, bottom: 8.0, right: 10.0, left: 80.0)
                : EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 10.0, right: 80.0),
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(
              gradient: isMe
                  ? LinearGradient(colors: [
                      Color(0xFF445984),
                      Color.fromRGBO(68, 89, 132, 0.7)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)
                  : LinearGradient(colors: [Colors.white, Colors.white]),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: isMe
                  ? null
                  : [
                      BoxShadow(
                          color: Color.fromRGBO(71, 55, 255, 0.08),
                          spreadRadius: 4,
                          blurRadius: 7,
                          offset: Offset(0, 3)),
                    ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.sender.name,
                  style: TextStyle(
                    fontFamily: 'Circular Std;',
                    fontSize: 13.0,
                    color: isMe ? Colors.white : Color(0xFF384F7D),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  message.text,
                  style: TextStyle(
                    fontFamily: 'Circular Std;',
                    fontSize: 10.0,
                    color: isMe
                        ? Color.fromRGBO(255, 255, 255, 0.8)
                        : Color.fromRGBO(56, 79, 125, 0.8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
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
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onTap: () => Navigator.pop(context)),
        centerTitle: true,
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Circular Std;',
          ),
        ),
        bottom: PreferredSize(
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.user.imageUrl),
              radius: 30.0,
            ),
            preferredSize: Size(50.0, 50.0)),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
