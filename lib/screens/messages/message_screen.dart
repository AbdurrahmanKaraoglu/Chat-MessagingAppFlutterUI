import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/constants.dart';
import 'package:flutter_chat_messaging_app/screens/messages/components/body.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          CircleAvatar(backgroundImage: AssetImage('assets/images/user_2.png')),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ahmet Özberk", style: TextStyle(fontSize: 16)),
              Text("3 dakika önce aktif", style: TextStyle(fontSize: 12)),
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
