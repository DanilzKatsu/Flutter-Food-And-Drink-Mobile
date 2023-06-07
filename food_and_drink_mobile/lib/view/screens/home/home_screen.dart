import 'package:flutter/material.dart';
import 'package:food_and_drink_mobile/model/product.dart';
import 'package:food_and_drink_mobile/view/screens/product_detail/product_detail.dart';
import '../../contains/style.dart';
import 'components/food_item.dart';
import 'components/navigation_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      child: Column(
        children: [
          SizedBox(
            height: 270,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/images/pic10.png",
                  fit: BoxFit.contain,
                ),
                const Positioned(top: 230, left: 40, child: SearchBar()),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Popular Recipe",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: kBlackColor)),
                const Spacer(),
                Text("View All",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: kPrimaryColor))
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: GridView.count(
              mainAxisSpacing: 10,
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              childAspectRatio: 1,
              children: List.generate(fake_data_product.length, (index) {
                return FoodItem(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductDetailScreen()));
                  },
                  image: fake_data_product[index].image,
                  name: fake_data_product[index].name,
                  type: fake_data_product[index].type,
                  rate: fake_data_product[index].rate,
                );
              }),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const NavigationBottomBar()
        ],
      ),
    );
  }
}
