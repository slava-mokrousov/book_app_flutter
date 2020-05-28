import 'package:book_app/screens/thank_you_screen.dart';
import 'package:flutter/material.dart';
import 'package:book_app/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      theme: ThemeData(
        primaryColor: Color(0xFFEEECFF),
        accentColor: Colors.white,
      ),
      // home: ChatScreen(),
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ThankYouScreen(),
    ChatScreen(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(71, 55, 255, 0.08),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0, 3)),
        ]),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                  color: Color.fromRGBO(56, 79, 125, 0.45),
                ),
                title: Text(
                  'Timeline',
                  style: TextStyle(
                    fontFamily: 'Circular Std;',
                    //fontSize: 10.0,
                    letterSpacing: 0.12,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.book,
                  color: Color.fromRGBO(56, 79, 125, 0.45),
                ),
                title: Text(
                  'My Books',
                  style: TextStyle(
                    fontFamily: 'Circular Std;',
                    //fontSize: 10.0,
                    letterSpacing: 0.12,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.share,
                  color: Color.fromRGBO(56, 79, 125, 0.45),
                ),
                title: Text(
                  'Add Review',
                  style: TextStyle(
                    fontFamily: 'Circular Std;',
                    //fontSize: 10.0,
                    letterSpacing: 0.12,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.bell,
                  color: Color.fromRGBO(56, 79, 125, 0.45),
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    fontFamily: 'Circular Std;',
                    //fontSize: 10.0,
                    letterSpacing: 0.12,
                  ),
                )),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF384F7D),
          unselectedFontSize: 10.0,
          selectedFontSize: 10.0,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          iconSize: 25.0,
          // selectedFontSize: 12.0,
        ),
      ),
    );
  }
}
