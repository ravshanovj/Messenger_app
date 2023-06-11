import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:new_my_app/view/screen/pages/chats.dart';
import 'package:new_my_app/view/screen/pages/contacts.dart';
import 'package:new_my_app/view/screen/pages/home.dart';
import 'package:new_my_app/view/screen/pages/number.dart';
import 'package:new_my_app/view/screen/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    HomeIcon(),
    ContactsIcon(),
    ChatsIcon(),
    NumberIcon(),
    SettingsIcon(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.3;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }
    double Myheight = 50.00;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contacts'),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentIndex,
        barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
        arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        circleOutline: 22.0,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: Colors.white,
        activeIconColor: Colors.black,
        inactiveIconColor: Colors.grey,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}

List<TabData> getTabsData() {
  return [
    TabData(
      icon: Icons.home,
      iconSize: 28,
      title: 'Home',
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.contacts,
      iconSize: 28,
      title: 'Contacts',
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.chat,
      iconSize: 28,
      title: 'Chat',
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Icons.numbers,
      iconSize: 28,
      title: 'Numbers',
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    TabData(
        icon: Icons.settings,
        iconSize: 28,
        title: 'Settings',
        fontSize: 15,
        fontWeight: FontWeight.bold)
  ];
}
