class Message {
  late String to;
  late String from;
  late String message;
  late DateTime sendAt;

  Message(
      {required this.message,
      required this.from,
      required this.to,
      required this.sendAt});

}
