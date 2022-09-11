import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: AppColor.themeColor,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 42,
                margin: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Material(
                  borderRadius: BorderRadius.circular(7),
                  elevation: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(
                            left: 6,
                          ),
                          child: Icon(
                            Icons.search,
                            color: AppColor.textBlackColor,
                            size: 23,
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: AppColor.textColor,
                      contentPadding: const EdgeInsets.only(top: 10),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        borderSide: BorderSide(
                          color: AppColor.textBlackColor,
                          width: 1,
                        ),
                      ),
                      hintText: AppText.searchHintText,
                      hintStyle: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}
