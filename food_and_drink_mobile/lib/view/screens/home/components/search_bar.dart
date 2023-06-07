import 'package:flutter/material.dart';

import '../../../contains/style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303,
      height: 38,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(kBorder2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Text(
              "Search",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: kWhiteColor),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.search,
              color: kWhiteColor,
            ),
          )
        ],
      ),
    );
  }
}
