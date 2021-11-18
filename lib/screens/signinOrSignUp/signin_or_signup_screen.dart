import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/components/primary_button.dart';
import 'package:flutter_chat_messaging_app/constants.dart';
import 'package:flutter_chat_messaging_app/screens/chats/chats_screen.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light1.png'
                    : 'assets/images/Logo_dark1.png',
                height: 146,
                fit: BoxFit.contain,
              ),
              Spacer(
                flex: 1,
              ),
              PrimaryButton(
                text: "Giriş Yap",
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatsScreen(),
                    )),
              ),
              SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Üye Ol",
                press: () {},
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
