import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/constants.dart';
import 'package:flutter_chat_messaging_app/models/ChatMessage.dart';
import 'package:flutter_chat_messaging_app/screens/messages/components/EncryptData.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    var encryptedText, plainText;
    return Expanded(
      child: GestureDetector(
        onLongPress: () {
          encryptedText = EncryptData.decryptAES(message.toString());

          print(encryptedText);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2),
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            message.text,
            style: TextStyle(
              color: message.isSender ? Colors.white : Theme.of(context).textTheme.bodyText1!.color,
            ),
          ),
        ),
      ),
    );
  }
}
