import 'package:flutter/material.dart';
import 'package:med/constants/constants.dart';

class SponsorBanner extends StatelessWidget {
  const SponsorBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      color: AppColor.textColor,
      child: Image.network('https://images-eu.ssl-images-amazon.com/images/G/31/img16/vineet/Amazon-Pay-Later/Sept_22/Jupiter_22/Headers/GW-editorial_1150x323._CB611152745_.jpg'),
    );
  }
}
