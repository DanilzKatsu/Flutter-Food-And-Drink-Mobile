import 'package:flutter/material.dart';
import 'package:food_and_drink_mobile/view/screens/home/components/icon_svg.dart';

class NavigationBottomBar extends StatelessWidget {
  const NavigationBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MySvgIcon(
            svgPath: 'assets/icons/house_fill.svg',
            svgPath2: 'assets/icons/house_01.svg',
          ),
          MySvgIcon(
            svgPath: 'assets/icons/chat-circle-fill-svgrepo-com.svg',
            svgPath2: 'assets/icons/chat-circle-svgrepo-com.svg',
          ),
          MySvgIcon(
            svgPath: 'assets/icons/bookmark-fill-svgrepo-com.svg',
            svgPath2: 'assets/icons/bookmark-svgrepo-com.svg',
          ),
          MySvgIcon(
            svgPath: 'assets/icons/user-svgrepo-com_1.svg',
            svgPath2: 'assets/icons/user-svgrepo-com.svg',
          ),
        ],
      ),
    );
  }
}
