import 'package:flutter/material.dart';
import 'package:leagueapi/utilities/text.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15.0),
      alignment: Alignment.centerRight,
      child: const TextButton(
        onPressed: null,
        child: CustomizedText(
          text: 'Forget Password?',
          color: Colors.white,
          size: 18.0,
        ),
      ),
    );
  }
}
