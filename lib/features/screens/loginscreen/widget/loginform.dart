// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med/common/validation/validation.dart';
import 'package:med/common/widget/label_text.dart';
import 'package:med/riverpod/riverpod.dart';
import 'package:med/features/screens/loginscreen/widget/login_button.dart';
import 'package:med/features/screens/signupscreen/signupscreen.dart';
import '../../../../constants/constants.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(loginProvider);
    return Container(
      padding: const EdgeInsets.only(left: 24.0),
      child: Form(
        key: provider.loginKey,
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
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
            const SizedBox(height: 32.0),
            const CommonLabel(labelText: AppText.loginLabel1Text),
            const SizedBox(height: 7.0),
            emailWidget(provider, context),
            const SizedBox(height: 16.0),
            const CommonLabel(
              labelText: AppText.loginLabel2Text,
            ),
            const SizedBox(height: 7.0),
            passwordWidget(provider, context, _obscureText, _toggle),
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
                  value: provider.checkValue,
                  onChanged: (value) {
                    setState(() {
                  provider.checkValue = value ?? false;
                });
                  },
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
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpScreen()))
                          })
              ])),
            )
          ],
        ),
      ),
    );
  }
}

Widget emailWidget(provider, context) {
  return SizedBox(
    width: 327.0,
    child: TextFormField(
      controller: provider.emailOrMobileController,
      validator: (value) => Validation.validateEmail(value),
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
          hintText: AppText.loginLabel1Text,
          fillColor: Colors.white70),
    ),
  );
}

Widget passwordWidget(provider, context, obscureText, toggle) {
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
