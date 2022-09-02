import 'package:flutter/material.dart';
import 'package:med/common/widget/header_widget.dart';
import 'package:med/constant/text.dart';
import 'package:med/screens/signupscreen/widget/signup_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderWidget(
                  heading: AppText.signUpHeaderMainText, subHeading: AppText.signUpHeaderSubText),
              SizedBox(height: 60.0),
              SignupForm()
            ],
          ),
        ));
  }
}
