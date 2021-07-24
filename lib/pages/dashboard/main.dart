import 'package:doctor_nest/pages/account/main.dart';
import 'package:doctor_nest/pages/chat/main.dart';
import 'package:doctor_nest/pages/dashboard/bottom_navigation.dart';
import 'package:doctor_nest/pages/monitor/main.dart';
import 'package:doctor_nest/pages/register/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDashBoard extends StatefulWidget {
  @override
  _HomeDashBoardState createState() => _HomeDashBoardState();
}

class _HomeDashBoardState extends State<HomeDashBoard> {
  int selectedIndex = 0;

  void itemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildItemComponent(selectedIndex),
      bottomNavigationBar: AppBottomBar(selectedIndex: selectedIndex, onTap: itemTapped),
    );
  }
}

Widget buildItemComponent(index) {
  switch (index) {
    case 0:
      return Monitor();
    case 1:
      return SupportChat();
    case 2:
      return UserAccount();
    default:
      return Monitor();
  }
}
