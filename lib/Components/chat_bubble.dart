import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({super.key, required this.isCurrnetUser, required this.message});
  final bool isCurrnetUser;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 25),
      decoration: BoxDecoration(
          color: isCurrnetUser ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(12)),
      child: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
