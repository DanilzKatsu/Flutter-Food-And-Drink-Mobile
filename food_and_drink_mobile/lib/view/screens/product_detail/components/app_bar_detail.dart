import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../contains/style.dart';

class AppBarDetail extends StatefulWidget {
  const AppBarDetail({
    super.key,
  });

  @override
  State<AppBarDetail> createState() => _AppBarDetailState();
}

class _AppBarDetailState extends State<AppBarDetail> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.keyboard_backspace,
                color: kWhiteColor,
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    like ? like = false : like = true;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                  height: 29,
                  width: 29,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: !like ? null : kWhiteColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: kWhiteColor),
                  ),
                  child: SvgPicture.asset(
                    !like
                        ? "assets/icons/un_like.svg"
                        : "assets/icons/like.svg",
                    colorFilter: ColorFilter.mode(
                        !like
                            ? kWhiteColor
                            : const Color.fromRGBO(254, 102, 55, 1),
                        BlendMode.srcIn),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
