import 'package:flutter/material.dart';

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Color.fromRGBO(171, 178, 191, 1),
        ),
        body: Center(
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
