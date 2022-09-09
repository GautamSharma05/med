import 'package:flutter/material.dart';

class LoginRepo extends ChangeNotifier {
  bool checkValue = false;
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final TextEditingController emailOrMobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  submitData(context) {
    if (loginKey.currentState!.validate()) {
      print('Success');
    }
  }
}
