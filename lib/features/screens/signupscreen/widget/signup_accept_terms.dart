import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med/constant/constants.dart';

import '../../../../riverpod/riverpod.dart';

class AcceptTermsAndConditions extends StatefulWidget {
  const AcceptTermsAndConditions({super.key});

  @override
  State<AcceptTermsAndConditions> createState() =>
      _AcceptTermsAndConditionsState();
}

class _AcceptTermsAndConditionsState extends State<AcceptTermsAndConditions> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Consumer(builder: (context, watch, child) {
      final provider = watch.watch(signUpProvider);
      return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          children: [
            Checkbox(
              value: provider.checkValue,
              onChanged: (value) {
                setState(() {
                  provider.checkValue = value ?? false;
                });
              },
            ),
            const Text(
              AppText.acceptTerm,
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
      );
    });
  }
}
