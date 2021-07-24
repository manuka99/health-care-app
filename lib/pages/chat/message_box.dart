import 'package:doctor_nest/common/custom_colors.dart';
import 'package:doctor_nest/pages/chat/message_hints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class MessageBox extends StatelessWidget {
  var messageController = TextEditingController();

  onHintSelected(String hint) {
    messageController.text += hint;
  }

  onSendMessage() {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 20),
      child: Column(
        children: [
          MessageHints(onHintSelected),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                textColor: Colors.white,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 28,
                  color: CustomColors.icon3,
                ),
                padding: EdgeInsets.all(12),
                shape: CircleBorder(),
              ),
              Expanded(
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: messageController,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins",
                        color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                      hintText: 'Enter a message',
                      suffixIcon: Transform.rotate(
                        angle: -34 * math.pi / 180,
                        child: IconButton(
                          onPressed: () {
                            onSendMessage();
                          },
                          icon: Icon(
                            Icons.send,
                            size: 22,
                            color: CustomColors.icon3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 14),
            ],
          )
        ],
      ),
    );
  }
}
