import 'package:flutter/material.dart';
import 'package:leagueapi/utilities/forget_password.dart';
import 'package:leagueapi/utilities/new_user.dart';
import 'package:leagueapi/utilities/password_textfield.dart';
import 'package:leagueapi/utilities/signin.dart';
import 'package:leagueapi/utilities/text.dart';
import 'package:leagueapi/utilities/user_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  //Greetings
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: CustomizedText(
                      text:
                          'Welcome back to Guoko Movie App again.Millions of movies and Tv shows to discover.Explore now!',
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),

                  // movie logo

                  SizedBox(
                    height: 250.0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/image2.png'),
                    ),
                  ),

                  const SizedBox(
                    height: 5.0,
                  ),

                  // Username
                  const UsernameTextField(),

                  const SizedBox(
                    height: 10.0,
                  ),
                  //Password
                  const PasswordTextField(),

                  const SizedBox(height: 5.0),
                  // // Forget Password Text Button
                  const ForgetPasswordTextButton(),

                  const SizedBox(
                    height: 5.0,
                  ),
                  // // Sign in Button
                  const SignInButton(),

                  const SizedBox(height: 5.0),

                  // // Dont have account Sign up
                  const NewUserSignUp(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
