import 'package:flutter/cupertino.dart';

class SignUp extends ChangeNotifier {
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobilNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
}
