import 'package:doctor_nest/common/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: CustomColors.app_bg_scaffold,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: CustomColors.blackDark1TextColor,
              size: 28,
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(20.00),
        child: Column(
          children: [
            Row(children: []),
            Image.asset("assets/images/mobile_security.png"),
            SizedBox(height: 22),
            Container(
              width: 204,
              child: Text(
                "Enter your mobile number we will send you the OTP to verify later",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  color: CustomColors.blackLight2TextColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 52),
            Container(
              height: 200,
              width: 328,
              child: Card(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              initialValue: "+ 94",
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabled: false,
                                  suffixText: "+94",
                                  fillColor: CustomColors.blackDark1TextColor),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            flex: 8,
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              style: TextStyle(
                                  color: CustomColors.blackDark1TextColor),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  fillColor: CustomColors.blackDark1TextColor),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/", (r) => false);
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 14),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.resolveWith<
                                  RoundedRectangleBorder>(
                              (states) => RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18))),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
                            if (states.contains(MaterialState.pressed))
                              return CustomColors.blackLightTextColor;
                            return CustomColors.app_primary;
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
