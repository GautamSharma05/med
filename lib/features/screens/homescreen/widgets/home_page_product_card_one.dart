import 'package:flutter/material.dart';
import 'package:med/common/widget/reusable_card.dart';
import 'package:med/constants/constants.dart';

class HomePageProductCardOne extends StatelessWidget {
  const HomePageProductCardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.56,
      color: AppColor.textColor,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
              child: Text(AppText.productCardOneTitle,
                  style: TextStyle(fontFamily: 'PoppinsSemiBold', fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ReusableCard(
                  image_1:
                      'https://images-eu.ssl-images-amazon.com/images/G/31/amazon_basics/ashaln/gw_btf_pc/xcm_banners_pc-qc-x-gl-tile1_372x232_in-en._SY116_CB609792791_.jpg',
                  text: 'Starting Rs.8089 | Smart Led Tvs',
                ),
                ReusableCard(
                  image_1:
                  'https://images-eu.ssl-images-amazon.com/images/G/31/amazon_basics/ashaln/gw_btf_pc/xcm_banners_pc-qc-x-gl-tile2_372x232_in-en._SY116_CB609792795_.jpg',
                  text: 'Up to 50% off | ACs & more',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ReusableCard(
                  image_1:
                  'https://images-eu.ssl-images-amazon.com/images/G/31/amazon_basics/ashaln/gw_btf_pc/xcm_banners_pc-qc-x-gl-tile3_372x232_in-en._SY116_CB609792794_.jpg',
                  text: 'Up to 75% off | Furniture',
                ),
                ReusableCard(
                  image_1:
                  'https://images-eu.ssl-images-amazon.com/images/G/31/amazon_basics/ashaln/gw_btf_pc/xcm_banners_pc-qc-x-gl-tile4_372x232_in-en._SY116_CB609792794_.jpg',
                  text: 'Up to 70% off | Sports & Fitness',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left:24.0),
              child:  Text('See More',style: TextStyle(
                fontFamily: 'PoppinsMedium',
                color: AppColor.themeColor,
              ),),
            ),
          ]),
    );
  }
}
