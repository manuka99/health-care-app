import 'package:doctor_nest/Widgets/doctor.box.dart';
import 'package:doctor_nest/common/app.constraints.dart';
import 'package:doctor_nest/common/custom_colors.dart';
import 'package:doctor_nest/models/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorsNearby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 10, 0.00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Doctors nearby you",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    color: CustomColors.blackLight3TextColor,
                    fontSize: 14),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: CustomColors.iconSelected,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Container(
          height: 174,
          padding: EdgeInsets.only(left: 10),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctors.length,
              itemBuilder: (context, index) =>
                  DoctorBox(doctor: doctors[index])),
        ),
      ],
    );
  }
}

List<Doctor> doctors = [
  Doctor(
      id: "1",
      name: "Dr. Jitendra Raut",
      skill: "B.Sc, MBBS, DDVL, MD-Dermitologist",
      rating: "4.7",
      imageUrl: "assets/images/doctor_profile2.jpg"),
  Doctor(
      id: "2",
      name: "Dr. Senila Fig",
      skill: "B.Sc, MBBS, DDVL, MD-Dermitologist",
      rating: "4.5",
      imageUrl: "assets/images/doctor_profile3.jpg"),
  Doctor(
      id: "3",
      name: "Dr. Steve Robert",
      skill: "B.Sc, MBBS, DDVL",
      rating: "4.9",
      imageUrl: "assets/images/doctor_profile4.jpg"),
  Doctor(
      id: "4",
      name: "Dr. Alina James",
      skill: "B.Sc, MBBS, DDVL, MD-Dermitologist",
      rating: "4.6",
      imageUrl: "assets/images/doctor_profile4.jpg")
];
