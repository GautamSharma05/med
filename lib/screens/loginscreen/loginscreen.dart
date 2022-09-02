import 'package:flutter/material.dart';
import 'package:med/constant/text.dart';
import 'package:med/common/widget/header_widget.dart';

import 'package:med/screens/loginscreen/widget/loginform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderWidget(
                heading: AppText.loginHeaderMainText, subHeading: AppText.loginHeaderSubText),
            SizedBox(height: 60.0),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
