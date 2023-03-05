import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1.0,
              blurRadius: 5.0,
            ),
          ]),
      child: Row(
        children: [
          const Icon(Icons.lock, size: 27.0, color: Color(0xFF475269)),
          const SizedBox(
            width: 15.0,
          ),
          SizedBox(
            width: 250.0,
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter password',
              ),
            ),
          )
        ],
      ),
    );
  }
}
