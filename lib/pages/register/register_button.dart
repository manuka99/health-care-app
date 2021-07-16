import 'package:doctor_nest/common/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  late IconData icon;
  late String title;
  late String route;

  RegisterButton(
      {required this.icon, required this.title, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        if (title == "Mobile Number")
          Navigator.pushNamed(context, "/register/mobile");
      },
      label: Text(this.title,
          style: TextStyle(
              fontSize: 18, color: CustomColors.blackLight3TextColor)),
      icon: Icon(this.icon, color: CustomColors.iconSelected),
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          alignment: Alignment.center,
          minimumSize: Size(288, 20),
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 60),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          side: BorderSide(color: CustomColors.app_primary)),
    );
  }
}
