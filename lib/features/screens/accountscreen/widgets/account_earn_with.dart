import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constants/constants.dart';
import 'package:med/features/screens/accountscreen/pages/referandearn/refer_and_earn.dart';
import 'package:med/features/screens/accountscreen/pages/sellonudiibaba/sell_on_udiibaba.dart';

class EarnWithUdiiBaba extends StatelessWidget {
  const EarnWithUdiiBaba({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Container(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: const Text(
              AppText.earnWithUdiiBaba,
              style: TextStyle(
                  color: AppColor.textBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: const Icon(color: AppColor.themeColor, LineIcons.bullhorn),
            title: const CommonText(
              text: AppText.referAndEarn,
            ),
            trailing:  IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ReferAndEarn()));
              },
            ),
          ),
          ListTile(
            leading: const Icon(color: AppColor.themeColor, LineIcons.store),
            title: const CommonText(
              text: AppText.sellOnUdiibaba,
            ),
            trailing:  IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SellOnUdiiBaba()));
              },
            ),
          ),
        ],
      ),
    );
  }
}