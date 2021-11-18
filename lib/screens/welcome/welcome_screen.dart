import 'package:flutter/material.dart';
import 'package:flutter_chat_messaging_app/constants.dart';
import 'package:flutter_chat_messaging_app/screens/signinOrSignUp/signin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(flex: 2),
          Image.asset(
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? 'assets/images/welcome_image2.png'
                : 'assets/images/welcome_image2.png',
          ),
          Spacer(flex: 3),
          Text(
            'Mesajlaşma Uygulamamıza \nHoş geldiniz',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: kDefaultPadding / 4,
          ),
          Spacer(flex: 3),
          FittedBox(
            child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninOrSignupScreen(),
                    )),
                child: Row(
                  children: [
                    Text(
                      'Atla',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.8)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.8),
                    )
                  ],
                )),
          )
        ],
      )),
    );
  }
}
