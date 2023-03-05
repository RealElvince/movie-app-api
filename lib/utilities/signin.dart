import 'package:flutter/material.dart';
import 'package:leagueapi/screens/home_screen.dart';
import 'package:leagueapi/utilities/text.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      child: Container(
          alignment: Alignment.center,
          height: 45.0,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(color: Colors.black, spreadRadius: 1.0, blurRadius: 0.0)
            ],
          ),
          child: const CustomizedText(
              text: 'Sign In', color: Colors.white, size: 16.0)),
    );
  }
}
