import 'package:flutter/material.dart';

import '../../../contains/style.dart';

class FoodItem extends StatelessWidget {
  final String image;
  final String name;
  final String type;
  final double rate;
  final VoidCallback press;
  const FoodItem({
    super.key,
    required this.image,
    required this.name,
    required this.type,
    required this.rate,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              width: 143,
              height: 126,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(kBorder4),
                  child: Image.asset(image)),
            ),
            Positioned(
              top: 10,
              right: 8,
              child: Container(
                width: 28,
                height: 14,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(kBorder5)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      size: 9,
                      color: kWhiteColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text(
                        rate.toString(),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: kWhiteColor,
                            ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
          const SizedBox(
            height: 12,
          ),
          Text(name,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: kBlackColor)),
          Text(type,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: kBlackColor)),
        ],
      ),
    );
  }
}
