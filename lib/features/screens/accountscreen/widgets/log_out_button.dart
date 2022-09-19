import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.textColor,
        ),
        onPressed: () {},
        child: const Text(
          AppText.logOut,
          style: TextStyle(
            color: AppColor.themeColor,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
