import 'package:book_app/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;

  Message({
    this.sender,
    this.time,
    this.text,
  });
}

final User currentUser =
    User(id: 0, name: 'You', imageUrl: 'assets/images/prof0.png');

final User rachel =
    User(id: 1, name: 'Rachel', imageUrl: 'assets/images/prof2.png');

final User tom =
    User(id: 2, name: 'Tom', imageUrl: 'assets/images/prof6.png');

final User anna =
    User(id: 3, name: 'Anna', imageUrl: 'assets/images/prof1.png');

final User bob =
    User(id: 4, name: 'Bob', imageUrl: 'assets/images/prof4.png');

final User man = User(id: 5, name: 'Man', imageUrl: 'assets/images/prof5.png');

final User nick = User(id: 5, name: 'Nick', imageUrl: 'assets/images/prof6.png');

List<User> recent = [rachel, tom, anna, bob, man];

List<Message> chats = [
  Message(
      sender: rachel,
      time: '13:28PM',
      text:
          'Quisque dictum varius arcu, eu scelerisque arcu consectetur ut. Duis dapibus nulla vitae ipsum mattis porttitor eget suscipit tellus.'),
  Message(
      sender: tom,
      time: '11:06AM',
      text:
          'Quisque dictum varius arcu, eu scelerisque arcu consectetur ut. Duis dapibus nulla vitae ipsum mattis porttitor eget suscipit tellus.'),
  Message(
      sender: anna,
      time: '07:25AM',
      text:
          'Quisque dictum varius arcu, eu scelerisque arcu consectetur ut. Duis dapibus nulla vitae ipsum mattis porttitor eget suscipit tellus.'),
  Message(
      sender: bob,
      time: '18:52PM',
      text:
          'Quisque dictum varius arcu, eu scelerisque arcu consectetur ut. Duis dapibus nulla vitae ipsum mattis porttitor eget suscipit tellus.'),
  Message(
      sender: man,
      time: '15:53PM',
      text:
          'Quisque dictum varius arcu, eu scelerisque arcu consectetur ut. Duis dapibus nulla vitae ipsum mattis porttitor eget suscipit tellus.'),
  Message(
      sender: nick,
      time: '15:53PM',
      text:
      'Quisque dictum varius arcu, eu scelerisque arcu consectetur ut. Duis dapibus nulla vitae ipsum mattis porttitor eget suscipit tellus.'),
];

List<Message> messages = [
  Message(
    sender: currentUser,
    time: '0',
    text: 'Quisque dictum varius arcu.',
  ),
  Message(
    sender: rachel,
    time: '0',
    text: 'Yeah, I think so too. I also loved his other books.',
  ),
  Message(
    sender: currentUser,
    time: '0',
    text: 'Haha, yes!',
  ),
  Message(
    sender: rachel,
    time: '0',
    text: 'LOL <3 Agree.',
  ),
  Message(
    sender: currentUser,
    time: '0',
    text: 'Quisque dictum varius arcu.',
  ),
  Message(
    sender: rachel,
    time: '0',
    text: 'Yeah, I think so too. I also loved his other books.',
  ),
  Message(
    sender: currentUser,
    time: '0',
    text: 'Haha, yes!',
  ),
  Message(
    sender: rachel,
    time: '0',
    text: 'LOL <3 Agree.',
  ),

];