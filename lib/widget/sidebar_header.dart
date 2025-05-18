import 'package:aplikasi_whatsapp/theme/theme.dart';
import 'package:flutter/material.dart';

class SidebarHeader extends StatelessWidget {
  SidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(
          bottom: BorderSide(color: darkTheme().scaffoldBackgroundColor),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Chats",
            style: TextStyle(
              color: lightTheme().iconTheme.color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Action Icons
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.circle_outlined),
                tooltip: "Status",
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.chat),
                tooltip: "New Chat",
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                tooltip: "Menu",
                onPressed: null,
              ),
            ],
          )
        ],
      ),
    );
  }
}
