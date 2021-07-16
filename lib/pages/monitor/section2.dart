import 'package:doctor_nest/pages/monitor/banners.dart';
import 'package:doctor_nest/pages/monitor/doctors_nearby.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 10),
          Banners(),
          SizedBox(height: 10),
          DoctorsNearby(),
          Card(
            elevation: 10,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 32),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Image.asset("assets/images/our_services.png"),
          ),
        ],
      ),
    );
  }
}
