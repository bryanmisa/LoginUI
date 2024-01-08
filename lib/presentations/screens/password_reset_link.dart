import 'package:flutter/material.dart';

class PasswordResetLink extends StatelessWidget {
  const PasswordResetLink({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
            child: Column(
              children: [Text('This is a text')],
            ),
        ),
      ),
    );
  }
}
