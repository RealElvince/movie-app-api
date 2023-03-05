import 'package:flutter/material.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({super.key});

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
          const Icon(Icons.person, size: 27.0, color: Colors.black),
          const SizedBox(
            width: 15.0,
          ),
          SizedBox(
            width: 250.0,
            child: TextFormField(
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter username',
              ),
            ),
          )
        ],
      ),
    );
  }
}
