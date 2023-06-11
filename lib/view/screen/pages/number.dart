import 'package:flutter/material.dart';

class NumberIcon extends StatelessWidget {
  const NumberIcon({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Number'),
          backgroundColor: Color.fromRGBO(171, 178, 191, 1),
        ),
        body: Center(
          child: Text(
            'Number',
            style: TextStyle(fontSize: 60),
          ),
        ),
      );
}
