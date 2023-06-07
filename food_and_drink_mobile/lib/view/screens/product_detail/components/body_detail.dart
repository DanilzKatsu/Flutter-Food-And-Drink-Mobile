import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_and_drink_mobile/model/product.dart';

import '../../../components/default_button.dart';
import '../../../contains/style.dart';
import 'item_material.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({
    super.key,
    required this.data,
  });

  final Product data;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 460,
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              kBorder1,
            ),
            topRight: Radius.circular(
              kBorder1,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 32.0, right: 32.0, top: 43.0, bottom: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  data.name,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              SizedBox(
                child: Text(
                  data.type,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: kPrimaryColor),
                ),
              ),
              const SizedBox(height: 28),
              SizedBox(
                height: 39,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ingredients(8)",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            "1 Serving",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: kPrimaryColor),
                          ),
                          const SizedBox(width: 4),
                          SvgPicture.asset(
                            "assets/icons/expand.svg",
                            height: 12,
                            colorFilter: const ColorFilter.mode(
                                kPrimaryColor, BlendMode.srcIn),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      data.materialProducts.length,
                      (index) =>
                          ItemMaterial(data: data.materialProducts[index]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultButton(
                    title: "Start Cook",
                    press: () {},
                    width: 179,
                    height: 46,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
