import 'package:doctor_nest/common/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MobileOtp extends StatelessWidget {
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
            Text("Enter code",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: CustomColors.blackLightTextColor,
                )),
            SizedBox(height: 10),
            Wrap(
              children: [
                Icon(
                  Icons.star,
                  color: CustomColors.starGreen,
                  size: 22,
                ),
                Icon(
                  Icons.star,
                  color: CustomColors.starGreen,
                  size: 22,
                ),
                Icon(
                  Icons.star,
                  color: CustomColors.starGreen,
                  size: 22,
                ),
                Icon(
                  Icons.star,
                  color: CustomColors.starGreen,
                  size: 22,
                ),
                Icon(
                  Icons.star,
                  color: CustomColors.starGreen,
                  size: 22,
                ),
                Icon(
                  Icons.star,
                  color: CustomColors.starGreen,
                  size: 22,
                ),
              ],
            ),
            SizedBox(height: 22),
            Container(
              width: 260,
              child: Text(
                "We have sent you an SMS on +92 7020764458 with 6 digit verification code.",
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
                      PinCodeTextField(
                        appContext: context,
                        length: 6,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        textStyle:
                            TextStyle(color: CustomColors.blackDark1TextColor),
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.underline,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 40,
                          fieldWidth: 40,
                          inactiveFillColor: Colors.transparent,
                          selectedFillColor: Colors.transparent,
                          activeFillColor: Colors.transparent,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        backgroundColor: Colors.transparent,
                        enableActiveFill: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        // errorAnimationController: errorController,
                        // controller: textEditingController,
                        onCompleted: (v) {
                          print("Completed");
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
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
                          minimumSize: MaterialStateProperty.resolveWith<Size>(
                              (states) => Size(52, 44)),
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
            SizedBox(height: 40),
            Text(
              "Did not receive the code?",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12,
                color: CustomColors.blackLight2TextColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Re-send",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        color: CustomColors.iconSelected,
                      ),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(width: 80),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Get a call now",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        color: CustomColors.iconSelected,
                      ),
                      textAlign: TextAlign.center,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
