import 'package:flutter/material.dart';
import 'package:food_and_drink_mobile/model/product.dart';

import '../../../contains/style.dart';

class ItemMaterial extends StatelessWidget {
  const ItemMaterial({
    super.key,
    required this.data,
  });
  final MaterialProduct data;
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
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(kBorder3),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      data.image,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 129,
                child: Text(
                  data.name,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: kBlackColor,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ],
          ),
          Text(
            "${data.serving} Cup",
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
