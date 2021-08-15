import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class Message {
  late String msgID;
  late String userID;
  late String participant; //to, from
  late String message;
  late DateTime sendAt;
  late String status;

  Message(
      {required this.message,
      required this.msgID,
      required this.userID,
      required this.participant,
      required this.sendAt,
      required this.status});

  static Message fromJson(Map<String, Object?> json) {
    Timestamp sentAtTime = json['sendAt']! as Timestamp;
    return new Message(
      message: json['message']! as String,
      msgID: json['msgID']! as String,
      userID: json['userID']! as String,
      participant: json['participant']! as String,
      sendAt: sentAtTime.toDate(),
      status: json['status']! as String,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'message': message,
      'msgID': msgID,
      'userID': userID,
      'participant': participant,
      'sendAt': sendAt,
      'status': status,
    };
  }

  void setStatus(String status) {
    this.status = status;
  }

  String getFormattedSentDate() {
    final df = new DateFormat('dd MMM yyyy  hh:mm a');
    return df.format(this.sendAt);
  }
}
