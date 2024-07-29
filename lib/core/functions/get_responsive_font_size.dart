import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/size_config.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletSize) {
    return width / 550;
  } else if (width < SizeConfig.desktopSize) {
    return width / 1000;
  }
  return width / 1920;
}
