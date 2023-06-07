import 'package:flutter/material.dart';

import '../../../contains/style.dart';

class ItemMaterial extends StatelessWidget {
  const ItemMaterial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultSpacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 57,
                height: 57,
                decoration: const BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(kBorder3),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/pic7.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 129,
                child: Text(
                  "Chocolate Chips",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: kBlackColor,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ],
          ),
          Text(
            "1 Cup",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: kGreyColor,
                ),
          ),
        ],
      ),
    );
  }
}
