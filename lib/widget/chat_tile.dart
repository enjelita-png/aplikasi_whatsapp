import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String? profileImage;
  final String message;
  final String time;
  final bool isGroup;
  final Function() OnTap;

  const ChatTile({
    super.key,
    required this.name,
    this.profileImage,
    required this.message,
    required this.time,
    required this.OnTap,
    this.isGroup = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnTap,
      child: ListTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: isGroup ? Colors.green : Colors.grey[700],
          backgroundImage:
              profileImage != null ? AssetImage(profileImage!) : null,
          child: profileImage == null
              ? isGroup
                  ? const Icon(Icons.group, color: Colors.white)
                  : const Icon(Icons.person, color: Colors.white)
              : null,
        ),
        title: Text(name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        subtitle: Text(
          message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          time,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
