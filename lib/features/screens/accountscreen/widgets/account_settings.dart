import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constant/constants.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: Text(
              AppText.accountSetting,
              style: TextStyle(
                  color: AppColor.textBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: Icon(color: AppColor.themeColor, LineIcons.user),
            title: CommonText(
              text: AppText.editProfile,
            ),
            trailing: Icon(LineIcons.angleRight),
          ),
          ListTile(
            leading: Icon(color: AppColor.themeColor, LineIcons.mapMarker),
            title: CommonText(
              text: AppText.savedAddresses,
            ),
            trailing: Icon(LineIcons.angleRight),
          ),
          ListTile(
            leading: Icon(color: AppColor.themeColor, LineIcons.creditCard),
            title: CommonText(
              text: AppText.savedCardAndWallet,
            ),
            trailing: Icon(LineIcons.angleRight),
          ),
        ],
      ),
    );
  }
}
