import 'package:aplikasi_whatsapp/page/chat_screen.dart';
import 'package:aplikasi_whatsapp/widget/glass_app_bar.dart';
import 'package:aplikasi_whatsapp/widget/glass_bottom_navigator.dart';
import 'package:flutter/material.dart';
import '../widget/chat_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> chats = [
    {
      "name": "6TDLN-C (Selasa 11.10)",
      "message": "+62 823-4665-7671 bergabung...",
      "time": "09.17",
      "isGroup": "true"
    },
    {"name": "Hersa", "message": "Oke sipp", "time": "Minggu"},
    {"name": "Lola'", "message": "Oke mksihh", "time": "Minggu"},
    {
      "name": "TEKNOLOGI BIG DATA-C",
      "message": "Fany menambahkan Anda",
      "time": "Sabtu",
      "isGroup": "true"
    },
    {"name": "Anastasya", "message": "Ma’pai.?", "time": "30/03/25"},
    {"name": "Anastasya", "message": "Ma’pai.?", "time": "30/03/25"},
    {"name": "Enjell", "message": "nda prgi kade", "time": "30/03/25"},
    {"name": "EnjelKrist", "message": "", "time": "30/03/25"},
    {
      "name": "Satli 23",
      "message": "Malam kak sekedar mengingatkan...",
      "time": "29/03/25"
    },
    {
      "name": "Mamaa ❤️",
      "message": "Rampo moraka indokmu matik...",
      "time": "29/03/25"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomGlassAppBar(
        leading: Container(
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.zero,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            backgroundBlendMode: BlendMode.overlay,
            color: Colors.white.withOpacity(0.3),
          ),
          child: InkWell(
            onTap: () {},
            child: Icon(Icons.more_horiz),
          ),
        ),
        title: Expanded(
          child: Text(
            "Chat",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              backgroundBlendMode: BlendMode.overlay,
              color: Colors.white.withOpacity(0.9),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.camera_alt,
                size: 20,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // backgroundBlendMode: BlendMode.overlay,
              color: Colors.green,
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ChatTile(
            OnTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
            },
            name: chat["name"] ?? "",
            message: chat["message"] ?? "",
            time: chat["time"] ?? "",
            isGroup: chat["isGroup"] == "true",
          );
        },
      ),
      bottomNavigationBar: CustomGlassBottomNavBar(
        selectedIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
