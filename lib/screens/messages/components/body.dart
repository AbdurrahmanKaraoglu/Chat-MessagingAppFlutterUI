import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/constants.dart';
import 'package:flutter_chat_messaging_app/models/ChatMessage.dart';
import 'package:flutter_chat_messaging_app/screens/messages/components/chat_input_field.dart';
import 'package:flutter_chat_messaging_app/screens/messages/components/message.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) {
                return Message(
                  message: demeChatMessages[index],
                );
              },
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}
