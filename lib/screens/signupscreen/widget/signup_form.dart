import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med/common/validation/validation.dart';
import 'package:med/common/widget/label_text.dart';
import 'package:med/constant/constants.dart';
import 'package:med/screens/signupscreen/widget/signup_accept_terms.dart';
import 'package:med/screens/signupscreen/widget/signup_button.dart';

import '../../../riverpod/riverpod.dart';

class SignupForm extends ConsumerStatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(signUpProvider);

    return Container(
      padding: const EdgeInsets.only(left: 24.0),
      child: Form(
        key: provider.signUpKey,
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
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
            const SizedBox(height: 32.0),
            const CommonLabel(labelText: AppText.signUpLabel1Text),
            const SizedBox(height: 7.0),
            nameWidget(provider, context),
            const SizedBox(height: 16.0),
            const CommonLabel(labelText: AppText.signUpLabel2Text),
            const SizedBox(height: 7.0),
            emailWidget(provider, context),
            const SizedBox(height: 16.0),
            const CommonLabel(labelText: AppText.signUpLabel3Text),
            const SizedBox(height: 7.0),
            mobileWidget(provider, context),
            const SizedBox(height: 16.0),
            const CommonLabel(
              labelText: AppText.loginLabel2Text,
            ),
            const SizedBox(height: 7.0),
            passwordWidget(provider, context, _obscureText, _toggle),
            const AcceptTermsAndConditions(),
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
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

nameWidget(provider, context) {
  return SizedBox(
    width: 327.0,
    child: TextFormField(
      validator: (value) => Validation.validateName(value),
      controller: provider.fullNameController,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
  );
}

emailWidget(provider, context) {
  return SizedBox(
    width: 327.0,
    child: TextFormField(
      validator: (value) => Validation.validateEmail(value),
      controller: provider.emailController,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
  );
}

mobileWidget(provider, context) {
  return SizedBox(
    width: 327.0,
    child: TextFormField(
      validator: (value) => Validation.validateMobile(value),
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
      ],
      controller: provider.mobilNumberController,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          errorStyle: const TextStyle(height: 0),
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
  );
}

passwordWidget(provider, context, obscureText, toggle) {
  return SizedBox(
    width: 327.0,
    child: TextFormField(
      validator: (value) => Validation.validatePassword(value),
      controller: provider.passwordController,
      obscureText: obscureText,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          suffixIcon: GestureDetector(
            onTap: toggle,
            child: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
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
  );
}
