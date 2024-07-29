import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: CustomDotIndicator(isActive: index == currentIndex),
                )));
  }
}
