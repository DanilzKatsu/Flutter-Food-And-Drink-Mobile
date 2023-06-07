// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../contains/style.dart';

class MySvgIcon extends StatefulWidget {
  final String svgPath;
  final String svgPath2;

  const MySvgIcon({Key? key, required this.svgPath, required this.svgPath2})
      : super(key: key);

  @override
  _MySvgIconState createState() => _MySvgIconState();
}

class _MySvgIconState extends State<MySvgIcon> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: SvgPicture.asset(
        height: 24,
        _isSelected ? widget.svgPath : widget.svgPath2,
        color: _isSelected ? kPrimaryColor : kPrimaryColor,
      ),
    );
  }
}
