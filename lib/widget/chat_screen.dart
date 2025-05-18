import 'package:aplikasi_whatsapp/widget/chat_bubble.dart';
import 'package:aplikasi_whatsapp/widget/chat_input.dart';
import 'package:aplikasi_whatsapp/widget/glass_app_bar.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final List<Map<String, dynamic>> messages = [
    {
      "sender": "Jefrii",
      "message": "Kalau di jam itu ada ada matkul ibu' 🙏",
      "time": "13.32",
      "color": Colors.red,
    },
    {
      "sender": "Imam TI D",
      "message": "Iye Bu ada matkul 🙏🏻",
      "time": "13.36",
      "color": Colors.purple,
    },
    {
      "sender": "Crespo",
      "image": "crespo.jpg",
      "message": "Saya jg bu ada matkul",
      "time": "13.36",
    },
    {
      "sender": "~ Ilham",
      "message": "Mungkin bisa dj jam 1.40 ibu?",
      "time": "13.36",
      "isEdited": true,
      "color": Colors.orange,
    },
    {
      "sender": "Imam TI D",
      "message": "Ada juga matakuliah jam 13.40 🙏🏻",
      "time": "13.37",
      "color": Colors.purple,
    },
    {
      "sender": "~ Ilham",
      "message": "Aduh",
      "time": "13.37",
      "color": Colors.orange,
    },
    {
      "sender": "~ San Ti",
      "message": "15.00 klo bgitu",
      "image": "santi.jpg",
      "time": "13.47",
      "color": Colors.green,
    },
    {
      "sender": "San Ti",
      "image": "santi.jpg",
      "message":
          "Yg bisa masuk d jam 9.20, silahkan.\nYg tdk bs, masuk d jam 15.00",
      "time": "13.50"
    },
    {
      "sender": "Intan",
      "message":
          "Yg bisa masuk d jam 9.20, silahkan.\nYg tdk bs, masuk d jam 15.00",
      "quoted": "~ San Ti",
      "time": "14.37",
      "color": Colors.pink,
    },
    {
      "sender": "Intan",
      "message": "Baik bu",
      "time": "14.37",
      "color": Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomGlassAppBar(
          leading: Navigator.of(context).canPop()
              ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                )
              : Container(),
          title: Expanded(
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('logo.png'), // atau NetworkImage
                  radius: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("6TROP-G", style: TextStyle(fontSize: 16)),
                      Text(
                        "Crespo, Dian, Diki, Eja, Exi, ...",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: const [
            Icon(Icons.call),
            SizedBox(width: 10),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey.shade200,
                image: DecorationImage(
                  // opacity: 0.5,
                  image: AssetImage('wallpaper.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final msg = messages[index];
                      return ChatBubble(
                        image: msg["image"],
                        sender: msg["sender"] ?? "",
                        message: msg["message"] ?? "",
                        time: msg["time"] ?? "",
                        color: msg["color"],
                        isEdited: msg["isEdited"] ?? false,
                        quoted: msg["quoted"],
                      );
                    },
                  ),
                ),
                const ChatInputField(),
              ],
            ),
          ],
        ));
  }
}
