import 'package:flutter/material.dart';
import 'package:leagueapi/utilities/text.dart';

class NewUserSignUp extends StatelessWidget {
  const NewUserSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          // Dont have an Account
          CustomizedText(
            text: 'Don\'t have an account? -',
            color: Colors.white,
            size: 20.0,
          ),
          TextButton(
            onPressed: null,
            child: CustomizedText(
              text: 'Sign Up',
              color: Colors.blueAccent,
              size: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
