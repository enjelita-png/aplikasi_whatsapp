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
              Icon(Icons.add, color: Theme.of(context).iconTheme.color),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    suffix: Icon(
                      Icons.sticky_note_2,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    suffixIconColor: Theme.of(context).iconTheme.color,
                    hintStyle:
                        TextStyle(color: Theme.of(context).iconTheme.color),
                    hintText: "Ketik pesan",
                    filled: true,
                    fillColor: Theme.of(context).brightness == Brightness.dark
                        ? Colors.grey.shade800
                        : Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.camera_alt, color: Theme.of(context).iconTheme.color),
              SizedBox(width: 8),
              Icon(Icons.mic, color: Theme.of(context).iconTheme.color),
            ],
          ),
        ),
      ),
    );
  }
}
