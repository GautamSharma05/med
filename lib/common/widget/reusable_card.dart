import 'package:flutter/material.dart';
import 'package:med/constants/constants.dart';

class ReusableCard extends StatelessWidget {
  final String image_1;
  final String text;
  const ReusableCard({Key? key, required this.image_1, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, top: 24.0, right: 32.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.35,
        height: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(image_1),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
