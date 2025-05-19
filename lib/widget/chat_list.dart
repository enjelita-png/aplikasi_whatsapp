import 'package:aplikasi_whatsapp/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final List<Map<String, String>> chats;
  const ChatList({super.key, required this.chats});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ChatTile(
          OnTap: () {},
          profileImage: chat["profileImage"],
          name: chat["name"] ?? "",
          message: chat["message"] ?? "",
          time: chat["time"] ?? "",
          isGroup: chat["isGroup"] == "true",
        );
      },
    );
  }
}
