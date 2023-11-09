class Chat {
  final String avatar;
  final String name;
  final String lastMessage;
  final String time;
  final int count;

  Chat({
    required this.avatar,
    required this.lastMessage,
    required this.name,
    this.count = 0,
    required this.time,
  });
}
