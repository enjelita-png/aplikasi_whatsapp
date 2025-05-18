import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String sender;
  final String? image;
  final String message;
  final String time;
  final Color? color;
  final bool isEdited;
  final String? quoted;

  ChatBubble({
    super.key,
    required this.sender,
    required this.image,
    required this.message,
    required this.time,
    this.color,
    this.isEdited = false,
    this.quoted,
  });

  _avatarColor(String nama) {
    int hash = 0;
    for (var i = 0; i < nama.length; i++) {
      hash = nama.codeUnitAt(i) + ((hash << 5) - hash);
    }
    int r = (hash >> 16) & 0xFF;
    int g = (hash >> 8) & 0xFF;
    int b = hash & 0xFF;
    return Color.fromRGBO(r, g, b, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      // padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: _avatarColor(sender),
            backgroundImage: image != null ? AssetImage(image!) : null,
            child: image == null
                ? Text(
                    sender.substring(0, 1).toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : null,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sender,
                      style: TextStyle(
                        color: color ?? Colors.grey[300],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(message),
                    const SizedBox(height: 4),
                    Text(
                      "${isEdited ? 'Diedit ' : ''}$time",
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
