import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive/hive.dart';
import 'package:new_my_app/service/service.dart';
import 'package:new_my_app/view/screen/bottom_navigation_bar.dart';

void main(List<String> args) {
  Hive.initFlutter();
  UserService.registerAdapters();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
