import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_and_drink_mobile/model/product.dart';
import 'package:food_and_drink_mobile/view/components/default_button.dart';
import 'package:food_and_drink_mobile/view/contains/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/app_bar_detail.dart';
import 'components/body_detail.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    height: 462,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -60,
                          left: 0,
                          right: 0,
                          child: CarouselSlider.builder(
                            options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndex = index;
                                });
                              },
                              height: 462,
                              autoPlay: false,
                              viewportFraction: 1,
                              autoPlayInterval: const Duration(seconds: 2),
                            ),
                            itemCount: 5,
                            itemBuilder: (context, index, realIndex) {
                              return Image.asset(
                                widget.product.image,
                                fit: BoxFit.contain,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const AppBarDetail(),
                  Positioned(
                    bottom: 474,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 31,
                            height: 31,
                          ),
                          AnimatedSmoothIndicator(
                            activeIndex: activeIndex,
                            count: 5,
                            effect: JumpingDotEffect(
                              dotHeight: 11,
                              dotWidth: 11,
                              dotColor: kGreyColor.withOpacity(0.6),
                              activeDotColor: kWhiteColor.withOpacity(0.8),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 31,
                                height: 31,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    color: kGreyColor.withOpacity(0.4),
                                    shape: BoxShape.circle),
                                child: SvgPicture.asset(
                                  "assets/icons/full_image.svg",
                                  colorFilter: const ColorFilter.mode(
                                      kWhiteColor, BlendMode.srcIn),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BodyDetail(data: widget.product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
