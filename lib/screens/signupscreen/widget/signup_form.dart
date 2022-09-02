import 'package:flutter/material.dart';
import 'package:med/common/widget/label_text.dart';
import 'package:med/constant/colors.dart';
import 'package:med/constant/text.dart';
import 'package:med/screens/signupscreen/widget/signup_button.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppText.signUpHeadingText,
            style: TextStyle(
              fontSize: 14,
              color: AppColor.textBlackColor,
              letterSpacing: 0.7000000000000001,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
          const SizedBox(height: 32.0),
          const CommonLabel(labelText: AppText.signUpLabel1Text),
          const SizedBox(height: 7.0),
          SizedBox(
            width: 327.0,
            height: 48.0,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                    color: AppColor.hintColor,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                  hintText: AppText.signUpLabel1Text,
                  fillColor: Colors.white70),
            ),
          ),
          const SizedBox(height: 16.0),
          const CommonLabel(labelText: AppText.signUpLabel2Text),
          const SizedBox(height: 7.0),
          SizedBox(
            width: 327.0,
            height: 48.0,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                    color: AppColor.hintColor,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                  hintText: AppText.signUpLabel2Text,
                  fillColor: Colors.white70),
            ),
          ),
          const SizedBox(height: 16.0),
          const CommonLabel(labelText: AppText.signUpLabel3Text),
          const SizedBox(height: 7.0),
          SizedBox(
            width: 327.0,
            height: 48.0,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                    color: AppColor.hintColor,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                  hintText: AppText.signUpLabel3Text,
                  fillColor: Colors.white70),
            ),
          ),
          const SizedBox(height: 16.0),
          const CommonLabel(
            labelText: AppText.loginLabel2Text,
          ),
          const SizedBox(height: 7.0),
          SizedBox(
            width: 327.0,
            height: 48.0,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: _toggle,
                    child: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                    color: AppColor.hintColor,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                  hintText: AppText.loginLabel2Text,
                  fillColor: Colors.white70),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (newValue) {},
                //  <-- leading Checkbox
              ),
              const Text(
                AppText.acceptTerm,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColor.textBlackColor,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                softWrap: false,
              ),
            ],
          ),
          const SizedBox(height: 35.0),
          const SignUpButton(),
          const SizedBox(height: 16.0),
          const Align(
            alignment: Alignment.center,
            child: Text(
              AppText.agreePolicy,
              style: TextStyle(
                fontSize: 10,
                color: AppColor.textBlackColor,
                height: 1.5,
              ),
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
