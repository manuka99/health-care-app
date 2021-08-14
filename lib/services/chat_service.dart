import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_nest/models/message.dart';

class ChatService {
  final messageRef =
  FirebaseFirestore.instance.collection('movies').withConverter<Message>(
    fromFirestore: (snapshot, _) => Message.fromJson(snapshot.data()!),
    toFirestore: (message, _) => message.toJson(),
  );

  ChatService(){}

  Future<List<QueryDocumentSnapshot<Message>>> getMessages(String userId,
      int messagesCount, String lastMessageId) async {
    List<QueryDocumentSnapshot<Message>> messages = await messageRef
        .where('from', isEqualTo: userId)
        .orderBy('sendAt', descending: true)
        .startAfter([lastMessageId])
        .limit(messagesCount)
        .get()
        .then((snapshot) => snapshot.docs);
    return messages;
  }

  void sendMessage(Message message) async {
    await messageRef.add(message);
  }

  void deleteMessage(messageId) async {
    await messageRef.doc(messageId).delete();
  }
}
