import 'package:flutter/material.dart';

class ContactsIcon extends StatefulWidget {
  const ContactsIcon({super.key});

  @override
  State<ContactsIcon> createState() => _ContactsIconState();
}

class _ContactsIconState extends State<ContactsIcon> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
          backgroundColor: Color.fromRGBO(171, 178, 191, 1),
        ),
        body: Center(
          child: Text(
            'Contacts',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
