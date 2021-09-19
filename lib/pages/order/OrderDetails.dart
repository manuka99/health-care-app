import 'package:doctor_nest/common/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCircle extends StatelessWidget {
  const OrderCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: CustomColors.bodyTextColor,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: CustomColors.bg_grey,
                blurRadius: 4,
                offset: Offset(4, 8)), // Shadow position)
          ]),
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          Text("Order #2021022589",
              style: TextStyle(
                  color: CustomColors.blackLightTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16)),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text("Status : ",
                  style: TextStyle(color: CustomColors.blackLightTextColor)),
              Text("Pending", style: TextStyle(color: Colors.redAccent)),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text("Date of delivery : ",
                  style: TextStyle(color: CustomColors.blackLightTextColor)),
              Text("Pending", style: TextStyle(color: Colors.lightBlue)),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text("Amount : ",
                  style: TextStyle(color: CustomColors.blackLightTextColor)),
              Text("Pending",
                  style: TextStyle(color: CustomColors.blackLightTextColor)),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () =>
                  {Navigator.of(context).pushNamed("/order/details")},
              style: TextButton.styleFrom(
                  padding: EdgeInsets.only(left: 14, right: 14),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, color: Colors.blue),
                      borderRadius: BorderRadius.circular(40))),
              child: Text("View More",
                  style: TextStyle(color: Colors.lightBlue, fontSize: 12)),
            ),
          )
        ],
      ),
    );
  }
}
