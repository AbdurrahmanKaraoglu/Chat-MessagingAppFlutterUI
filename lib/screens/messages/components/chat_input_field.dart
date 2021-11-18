import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/constants.dart';
import 'package:flutter_chat_messaging_app/models/Chat.dart';
import 'package:flutter_chat_messaging_app/models/ChatMessage.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: kPrimaryColor),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
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
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        controller: myController,
                        decoration: InputDecoration(hintText: 'Mesaj yazın', border: InputBorder.none),
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
                print(myController.text);

                demeChatMessages.add(
                  ChatMessage(
                      text: myController.text,
                      messageType: ChatMessageType.text,
                      messageStatus: MessageStatus.viewed,
                      isSender: true),
                );
              },
              icon: Icon(Icons.send, color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64)),
            ),
          ],
        ),
      ),
    );
  }
}
