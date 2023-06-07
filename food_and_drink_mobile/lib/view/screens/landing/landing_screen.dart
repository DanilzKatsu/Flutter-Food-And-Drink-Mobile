import 'package:flutter/material.dart';
import 'package:food_and_drink_mobile/view/screens/product_detail/product_detail.dart';

import '../../components/default_button.dart';
import '../../contains/style.dart';
import '../home/home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/pic1.png",
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Text(
                  "What do you want to cook today?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: kWhiteColor),
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 84.0),
                child: Text(
                  "Let’s make a delicious dish with the best recipe for the family",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: kWhiteColor),
                ),
              ),
              const SizedBox(height: 63),
              DefaultButton(
                height: 53,
                width: 241,
                title: "Start",
                press: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                large: true,
              ),
              const SizedBox(height: 63),
            ],
          ),
        ],
      ),
    );
  }
}
