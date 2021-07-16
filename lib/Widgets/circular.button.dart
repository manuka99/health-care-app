import 'package:doctor_nest/common/app.constraints.dart';
import 'package:doctor_nest/common/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularButton {
  late SvgPicture svg;
  late String title;
  late String description;

  CircularButton(
      {required this.svg, required this.title, required this.description});
}

class CircularButtonWidget extends StatelessWidget {
  late CircularButton circularButton;

  CircularButtonWidget({required this.circularButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          color: Colors.white,
          height: AppConstraints.home_hero_button_radius,
          child: circularButton.svg,
          elevation: 10,
          shape: CircleBorder(),
        ),
        // IconButton(
        //   onPressed: (){},
        //   icon: Container(
        //       height: AppConstraints.home_hero_button_radius,
        //       width: AppConstraints.home_hero_button_radius,
        //       decoration: BoxDecoration(
        //           boxShadow: [
        //             BoxShadow(
        //               color: Color.fromRGBO(0, 0, 0, 0.25),
        //               offset: Offset(0, 4),
        //               blurRadius: 10,
        //               spreadRadius: 4,
        //             )
        //           ],
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(
        //               AppConstraints.home_hero_button_radius)),
        //       child: Center(
        //         child: circularButton.svg
        //       )),
        // ),
        SizedBox(height: 10,),
        Text(
          circularButton.title,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              color: CustomColors.blackLightTextColor,
              fontSize: 14),
        ),
        Text(
          circularButton.description,
          style: TextStyle(
              fontFamily: "Poppins",
              color: CustomColors.blackLight2TextColor,
              fontSize: 12),
        )
      ],
    );
  }
}
