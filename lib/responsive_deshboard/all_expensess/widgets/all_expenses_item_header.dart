import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.backgroundColor, this.imageColor});
  final String image;
  final Color? backgroundColor;
  final Color? imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
              color: backgroundColor ?? const Color(0xffFAFAFA),
              shape: const OvalBorder()),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        Transform.rotate(
            angle: -pi,
            child:  Icon(
              Icons.arrow_back_ios_new_outlined,
              color:imageColor==null? Color(0xff064061):Colors.white,
            )),
      ],
    );
  }
}
