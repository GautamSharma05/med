import 'package:flutter/material.dart';
import 'package:med/common/util/util.dart';

class SignUpRepo extends ChangeNotifier {
  bool checkValue = false;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobilNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();

  submitData(context){
   if(signUpKey.currentState!.validate()){
    if(checkValue == false){
     Util.getFlashBar(context, "Please accept terms and conditions");
    }
   }
    
  }



}