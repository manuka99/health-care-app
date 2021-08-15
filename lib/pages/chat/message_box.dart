import 'package:doctor_nest/common/custom_colors.dart';
import 'package:doctor_nest/models/message.dart';
import 'package:doctor_nest/pages/chat/message_hints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:uuid/uuid.dart';

class MessageBox extends StatelessWidget {
  late void Function(String) sendMessage;

  var messageController = TextEditingController();

  onHintSelected(String hint) {
    messageController.text += hint;
  }

  onSendMessage(BuildContext context) {
    if (messageController.text.isNotEmpty) sendMessage(messageController.text);
    messageController.text = "";
    // FocusScope.of(context).requestFocus(FocusNode());
  }

  MessageBox({required this.sendMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          MessageHints(onHintSelected),
          SizedBox(height: 10),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          minLines: 1,
                          maxLines: 4,
                          autofocus: true,
                          keyboardType: TextInputType.text,
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
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 14),
                            hintText: 'Type a message',
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: 0 * math.pi / 180,
                        child: IconButton(
                          onPressed: () {
                            onSendMessage(context);
                          },
                          icon: Icon(
                            Icons.send,
                            size: 22,
                            color: CustomColors.icon3,
                          ),
                        ),
                      ),
                    ],
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
