import 'package:book_app/models/message_model.dart';
import 'package:book_app/screens/messages_screen.dart';
import 'package:flutter/material.dart';

class RecentlyAdded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 10.0, bottom: 10.0),
          child: Text(
            'Recently added'.toUpperCase(),
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Circular Std',
              color: Color.fromRGBO(56, 79, 125, 0.8),
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          height: 80.0,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: recent.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => MessagesScreen(
                                user: recent[index],
                              ))),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(recent[index].imageUrl),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
