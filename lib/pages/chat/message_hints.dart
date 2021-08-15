import 'package:doctor_nest/common/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageHints extends StatelessWidget {
  List<String> hints = [
    "Hi, Doctor",
    "Are you free today?",
    "My Medicine",
    "Clinic",
    "Emergency",
    "Lab Reports",
    "Channel Doctor",
    "List the Doctors",
    "Can I place an appointment today?"
  ];

  late void Function(String hint) onHintSelected;

  MessageHints(this.onHintSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        itemCount: hints.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(
              left: index == 0 ? 18 : 10,
              right: index == hints.length - 1 ? 20 : 10),
          child: TextButton(
              onPressed: () {
                onHintSelected(hints[index]);
              },
              style: TextButton.styleFrom(
                  primary: CustomColors.hintTextColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                          color: CustomColors.iconNotSelected, width: 1)),
                  backgroundColor: Colors.white,
                  textStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 10,
                      color: CustomColors.hintTextColor)),
              child: Text(
                hints[index],
              )),
        ),
      ),
    );
  }
}
