import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ThankYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFEEECFF), Color(0xFFFFFFFF)])),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(114, 255, 153, 0.6),
                        Color.fromRGBO(0, 210, 58, 0.6)
                      ])),
                  child: Icon(
                    CupertinoIcons.check_mark,
                    color: Colors.white,
                    size: 100.0,
                  ),
                ),
                Text(
                  'Thank you!',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontFamily: "Circular Std",
                    color: Color(0xFF384F7D),
                    fontWeight: FontWeight.bold,
                    //color: Color.fromRGBO(56, 79, 125, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'You have submitted your first book review. \n Now it’s time to make some friends.',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Circular Std",
                    color: Color.fromRGBO(56, 79, 125, 0.8),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFBAFB67), Color(0xFF00D23A)])),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'ADD FRIENDS',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Circular Std",
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'YOU MAY ALSO BE INTERESED IN:',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(56, 79, 125, 0.8),
                    fontFamily: "Circular Std",
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/image1.png',
                          scale: 1.3,
                        ),
                        Text(
                          'Scar Tissue',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF384F7D),
                            fontFamily: "Circular Std",
                          ),
                        ),
                        Text(
                          'Anthony Kiedis',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Color.fromRGBO(56, 79, 125, 0.8),
                            fontFamily: "Circular Std",
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset('assets/images/image2.png', scale: 1.3),
                        Text(
                          'Eat Awesome',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF384F7D),
                            fontFamily: "Circular Std",
                          ),
                        ),
                        Text(
                          'Paul Jarvis',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Color.fromRGBO(56, 79, 125, 0.8),
                            fontFamily: "Circular Std",
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset('assets/images/image3.png', scale: 1.3),
                        Text(
                          'The Wastelands',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xFF384F7D),
                            fontFamily: "Circular Std",
                          ),
                        ),
                        Text(
                          'Stephen King',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Color.fromRGBO(56, 79, 125, 0.8),
                            fontFamily: "Circular Std",
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ]),
        ),
      ),
    );
  }
}
