import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:med/common/widget/label_text.dart';
import 'package:med/constant/colors.dart';
import 'package:med/constant/text.dart';
import 'package:med/screens/loginscreen/widget/login_button.dart';
import 'package:med/screens/signupscreen/signupscreen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
            AppText.loginHeadingText,
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
          const CommonLabel(labelText: AppText.loginLabel1Text),
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
                  hintText: AppText.loginLabel1Text,
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
          const SizedBox(
            height: 7.0,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 40.0),
            child: Align(
              alignment: Alignment.topRight,
              child: CommonLabel(
                labelText: AppText.forgotPassword,
              ),
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
                AppText.rememberMe,
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
          const SizedBox(height: 45.0),
          const LoginButton(),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.center,
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'New User? ',
                  style: TextStyle(
                    color: AppColor.hintColor,
                    fontSize: 14,
                    height: 1.5,
                  )),
              TextSpan(
                  text: 'Create Account',
                  style: const TextStyle(
                    color: AppColor.themeColor,
                    fontSize: 14,
                    height: 1.5,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const SignUpScreen()))
                        })
            ])),
          )
        ],
      ),
    );
  }
}
