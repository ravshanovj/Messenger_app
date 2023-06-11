import 'package:flutter/material.dart';

class ChatsIcon extends StatelessWidget {
  const ChatsIcon({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
          backgroundColor: Color.fromRGBO(171, 178, 191, 1),
        ),
        body: Center(
          child: Text(
            'Chats',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
