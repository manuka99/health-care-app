import 'package:doctor_nest/common/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

@override
class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  void initState() {
    super.initState();
    slides.add(new Slide(
        pathImage: "assets/images/intro1.png",
        backgroundColor: Colors.white,
        widgetDescription: Column(
          children: [
            Text("Search Doctors",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: CustomColors.blackDark1TextColor)),
            SizedBox(
              height: 10,
            ),
            Text("Get list of best doctor nearby you",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                    color: CustomColors.blackDark1TextColor)),
          ],
        )));
    slides.add(new Slide(
        pathImage: "assets/images/intro2.png",
        backgroundColor: Colors.white,
        widgetDescription: Column(
          children: [
            Text("Book Appointment",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: CustomColors.blackDark1TextColor)),
            SizedBox(
              height: 10,
            ),
            Text("Book an appointment with a right doctor",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                    color: CustomColors.blackDark1TextColor)),
          ],
        )));
    slides.add(new Slide(
        pathImage: "assets/images/intro3.png",
        backgroundColor: Colors.white,
        widgetDescription: Column(
          children: [
            Text("Book Diagonostic",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: CustomColors.blackDark1TextColor)),
            SizedBox(
              height: 10,
            ),
            Text("Search and book diagnostic test",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                    color: CustomColors.blackDark1TextColor)),
          ],
        )));
  }

  void onDonePress() {
    // Do what you want
    Navigator.pushNamed(context, "/");
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      showDotIndicator: true,
      showNextBtn: false,
      onDonePress: this.onDonePress,
      showSkipBtn: false,
      showDoneBtn: true,
      renderDoneBtn: Text("Get started",
          style: TextStyle(
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              color: CustomColors.blueTextColor)),
      doneButtonStyle: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        side: BorderSide(width: 1, color: CustomColors.blueTextColor),
      )
    );
  }
}
