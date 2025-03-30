import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign Up.',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          // AuthField(hintText: hintText),
        ],
      ),
    );
  }
}
