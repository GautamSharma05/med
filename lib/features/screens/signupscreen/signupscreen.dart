import 'package:flutter/material.dart';
import 'package:med/common/widget/header_widget.dart';
import 'package:med/constant/constants.dart';
import 'package:med/features/screens/signupscreen/widget/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
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
