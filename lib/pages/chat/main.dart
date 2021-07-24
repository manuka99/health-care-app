import 'package:doctor_nest/common/custom_colors.dart';
import 'package:doctor_nest/models/message.dart';
import 'package:doctor_nest/pages/chat/chat_header.dart';
import 'package:doctor_nest/pages/chat/message_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportChat extends StatefulWidget {
  @override
  _SupportChatState createState() => _SupportChatState();
}

class _SupportChatState extends State<SupportChat> {
  List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ChatHeader(),
            Expanded(
                child: Container(
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    var message = messages[index];
                    return Container();
                  }),
            )),
            MessageBox()
          ],
        ),
      ),
    );
  }
}
