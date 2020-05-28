import 'package:book_app/models/message_model.dart';
import 'package:book_app/screens/messages_screen.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: Text(
                'Chat'.toUpperCase(),
                style: TextStyle(
                  fontSize: 12.0,
                  letterSpacing: 1.0,
                  fontFamily: 'Circular Std',
                  color: Color.fromRGBO(56, 79, 125, 0.8),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.separated(
                    itemCount: chats.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(
                          color: Color.fromRGBO(56, 79, 125, 0.1),
                        ),
                    itemBuilder: (BuildContext context, int index) {
                      final Message chat = chats[index];
                      return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => MessagesScreen(
                                      user: chat.sender,
                                    ))),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 15.0, bottom: 15.0, left: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 24.0,
                                backgroundImage:
                                    AssetImage(chat.sender.imageUrl),
                              ),
                              SizedBox(
                                width: 11.0,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 30.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            chat.sender.name,
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                fontFamily: 'Circular Std',
                                                color: Color(0xFF384F7D)),
                                          ),
                                          Text(
                                            chat.time,
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              fontFamily: 'Circular Std',
                                              color: Color.fromRGBO(
                                                  68, 89, 132, 0.25),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7.0,
                                    ),
                                    Text(
                                      chat.text,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Circular Std',
                                        color: Color.fromRGBO(56, 79, 125, 0.8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
