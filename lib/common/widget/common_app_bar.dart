import 'package:flutter/material.dart';
import 'package:med/constant/constants.dart';

import 'common_app_bar_text.dart';

class CommonAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CommonAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CommonAppBarText(text: title),
      actions: [
        IconButton(
            onPressed: () {
              showSearch(
                  context: context, delegate: MyAccountPageSearchDelegate());
            },
            icon: const Icon(
              Icons.search,
              color: AppColor.textColor,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyAccountPageSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
