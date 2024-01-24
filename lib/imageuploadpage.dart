import 'package:flutter/material.dart';

class imageupload extends StatelessWidget {
  const imageupload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            maxRadius:double.infinity,
          )
        ],
      ),
    );
  }
}