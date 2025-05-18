import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String sender;
  final String? image;
  final String message;
  final String time;
  final Color? color;
  final bool isEdited;
  final String? quoted;

  const ChatBubble({
    super.key,
    required this.sender,
    required this.image,
    required this.message,
    required this.time,
    this.color,
    this.isEdited = false,
    this.quoted,
  });

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
            backgroundColor: Colors.grey[900],
            backgroundImage:
                image != null ? AssetImage(image!) : AssetImage(''),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
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
