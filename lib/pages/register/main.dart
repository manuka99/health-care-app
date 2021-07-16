import 'package:doctor_nest/common/custom_colors.dart';
import 'package:doctor_nest/common/icons.dart';
import 'package:doctor_nest/pages/register/register_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class RegisterHome extends StatefulWidget {
  @override
  _RegisterHomeState createState() => _RegisterHomeState();
}

class _RegisterHomeState extends State<RegisterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 269,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: CustomColors.app_primary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(160),
                      bottomRight: Radius.circular(240))),
              child: Center(
                child: Text("Doctor Nest",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                    )),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 269 - 106,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RegisterButton(icon: Icons.mobile_friendly_outlined, title: "Mobile Number", route: "/register/mobile"),
                  RegisterButton(icon: Icons.facebook_rounded, title: "Facebook", route: "/register/facebook"),
                  RegisterButton(icon: CustomIcons.google, title: "Google", route: "/register/google")
                ],
              ),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  bottom: -106,
                  right: -106,
                  child: Container(
                    height: 212,
                    width: 212,
                    decoration: BoxDecoration(
                        color: CustomColors.app_primary,
                        borderRadius: BorderRadius.circular(106)),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
