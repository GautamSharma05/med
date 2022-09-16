import 'package:flutter/material.dart';

class CommonAppBarText extends StatelessWidget {
  final String text;
  const CommonAppBarText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w300),
    );
  }
}
