import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med/constant/constants.dart';
import '../../../riverpod/riverpod.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final provider = ref.watch(signUpProvider);
    return SizedBox(
      width: 327.0,
      height: 48.0,
      child: ElevatedButton(
        onPressed: () {
          provider.submitData(context);
        },
        style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        child: const Text(
          AppText.signUpButtonText,
          style: TextStyle(
            fontSize: 12,
            color: AppColor.textColor,
            letterSpacing: 0.6000000000000001,
            fontWeight: FontWeight.w700,
            height: 1.25,
          ),
          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
          softWrap: false,
        ),
      ),
    );
  }
}
