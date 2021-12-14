import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/constants.dart';
import 'package:flutter_chat_messaging_app/models/ChatMessage.dart';
import 'package:flutter_chat_messaging_app/screens/messages/components/EncryptData.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final myController = TextEditingController();
  var encryptedText, plainText;
  late final ChatMessage message;
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xFF087949).withOpacity(0.08),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            const Icon(Icons.mic, color: kPrimaryColor),
            const SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        controller: myController,
                        decoration: const InputDecoration(hintText: 'Mesaj yazın', border: InputBorder.none),
                      ),
                    ),

                    // Icon(
                    //   Icons.attach_file,
                    //   color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                    // ),
                    // SizedBox(width: kDefaultPadding / 4),
                    // Icon(
                    //   Icons.camera_alt_outlined,
                    //   color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64),
                    // ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                plainText = myController.text;

                setState(() {
                  encryptedText = EncryptData.encryptAES(plainText);

                  // burda firebase e veri göndereceğiz
                  demeChatMessages.add(
                    ChatMessage(
                        text: encryptedText.base64,
                        messageType: ChatMessageType.text,
                        messageStatus: MessageStatus.viewed,
                        isSender: true),
                  );
                });
              },
              icon: Icon(Icons.send, color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64)),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  print(message.text);
                  print('Şifre Çözüldü : ' + EncryptData.decryptAES(encryptedText));
                });
              },
              icon: Icon(Icons.no_encryption, color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64)),
            ),
          ],
        ),
      ),
    );
  }
}
