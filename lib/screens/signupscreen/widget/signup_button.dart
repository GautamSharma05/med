import 'package:flutter/material.dart';
import 'package:med/constant/colors.dart';
import 'package:med/constant/text.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.0,
      height: 48.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        child: const Text(
          AppText.signUpButtonText,
          style: TextStyle(
            fontSize: 12,
            color: AppColor.textColor,
            letterSpacing: 0.6000000000000001,
            fontWeight: FontWeight.w700,
            height: 1.25,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          softWrap: false,
        ),
      ),
    );
  }
}
