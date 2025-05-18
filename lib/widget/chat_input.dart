import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GlassmorphicContainer(
        width: double.infinity,
        height: 80,
        borderRadius: 0,
        blur: 20,
        alignment: Alignment.center,
        border: 0,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.1),
              Color(0xFFFFFFFF).withOpacity(0.1),
            ],
            stops: [
              0.1,
              1,
            ]),
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white70.withOpacity(0.5),
            Colors.white70.withOpacity(0.5),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          child: Row(
            children: [
              const Icon(Icons.add, color: Colors.white70),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    suffix: Icon(
                      Icons.sticky_note_2,
                      color: Colors.white,
                    ),
                    suffixIconColor: Colors.white,
                    hintStyle: const TextStyle(color: Colors.white70),
                    hintText: "Ketik pesan",
                    filled: true,
                    fillColor: Colors.grey[800],
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.camera_alt, color: Colors.white70),
              const SizedBox(width: 8),
              const Icon(Icons.mic, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}
