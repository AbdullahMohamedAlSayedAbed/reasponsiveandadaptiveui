import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child, this.paddingContainer,
  });
  final Widget child;
  final double? paddingContainer;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all(paddingContainer??20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child);
  }
}
