import 'package:flutter/material.dart';
import 'package:med/common/widget/pages_app_bar.dart';
import 'package:med/constant/constants.dart';

class SavedAddresses extends StatelessWidget {
  const SavedAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: PageAppBar(
              title: AppText.savedAddresses,
            ),
        ));
  }
}
