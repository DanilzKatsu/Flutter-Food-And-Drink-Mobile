import 'package:flutter/material.dart';

import '../contains/style.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.title,
    required this.press,
    required this.width,
    required this.height,
    this.large = false,
  });

  final String title;
  final VoidCallback press;
  final double width;
  final double height;
  final bool large;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: press,
        child: Container(
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(kBorder2),
            ),
          ),
          height: height,
          width: width,
          alignment: Alignment.center,
          child: Text(
            title,
            style: large
                ? Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: kWhiteColor)
                : Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: kWhiteColor),
          ),
        ),
      ),
    );
  }
}
