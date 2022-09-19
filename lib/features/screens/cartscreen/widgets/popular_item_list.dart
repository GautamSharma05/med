import 'package:flutter/material.dart';
import 'package:med/common/widget/common_text.dart';
import 'package:med/constant/constants.dart';

class PopularItemList extends StatelessWidget {
  const PopularItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      color: AppColor.textColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 15, bottom: 10.0),
            child: const Text(
              AppText.popularOnUdiiBaba,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.7),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/2215210/2018/1/22/11516616541193-Roadster-Men-Beige-Colourblocked-Round-Neck-T-shirt-8181516616541016-1.jpg'),
            ),
            title: CommonText(text: AppText.tshirt),
            subtitle: CommonText(text: AppText.brandName_1),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/1700944/2022/3/2/093bc645-d461-4128-94a1-0692803944141646215571321-HRX-by-Hrithik-Roshan-Men-Yellow-Printed-Cotton-Pure-Cotton--1.jpg'),
            ),
            title: CommonText(text: AppText.tshirt),
            subtitle: CommonText(text: AppText.brandName_2),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://cdn.shopify.com/s/files/1/0266/6276/4597/products/300893983YELLOW_2_1024x1024.jpg?v=1657624702'),
            ),
            title: CommonText(text: AppText.kurtas),
            subtitle: CommonText(text: AppText.brandName_3),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://cdn.shopify.com/s/files/1/0266/6276/4597/products/300890677AQUA_2_1024x1024.jpg?v=1653565616'),
            ),
            title: CommonText(text: AppText.kurtas),
            subtitle: CommonText(text: AppText.brandName_4),
          ),
        ],
      ),
    );
  }
}
