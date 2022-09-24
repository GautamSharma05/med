import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constants/constants.dart';
import 'package:med/features/screens/accountscreen/pages/editprofile/edit_profile.dart';
import 'package:med/features/screens/accountscreen/pages/savedaddresses/saved_addresses.dart';
import 'package:med/features/screens/accountscreen/pages/savedcard/saved_card.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.textColor,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.27,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: const Text(
              AppText.accountSetting,
              style: TextStyle(
                  color: AppColor.textBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: const Icon(color: AppColor.themeColor, LineIcons.user),
            title: const CommonText(
              text: AppText.editProfile,
            ),
            trailing: IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfile()));
              },
            ),
          ),
          ListTile(
            leading:
                const Icon(color: AppColor.themeColor, LineIcons.mapMarker),
            title: const CommonText(
              text: AppText.savedAddresses,
            ),
            trailing: IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SavedAddresses()));
              },
            ),
          ),
          ListTile(
            leading:
                const Icon(color: AppColor.themeColor, LineIcons.creditCard),
            title: const CommonText(
              text: AppText.savedCardAndWallet,
            ),
            trailing: IconButton(
              icon: const Icon(LineIcons.angleRight),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SavedCard()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
