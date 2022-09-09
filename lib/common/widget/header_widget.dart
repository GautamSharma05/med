import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';


class HeaderWidget extends StatelessWidget {
  final String? heading;
  final String? subHeading;
  const HeaderWidget({Key? key, @required this.heading, @required this.subHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50.0, left: 24.0),
      width: double.infinity,
      height: 186,
      color: AppColor.themeColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () => {Navigator.pop(context)},
              child: const Icon(Icons.arrow_back, color: AppColor.textColor, size: 24.0)),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            heading!,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColor.textColor,
            ),
            textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            subHeading!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.textColor,
              height: 1.5,
            ),
            textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
            softWrap: false,
          ),
        ],
      ),
    );
  }
}
