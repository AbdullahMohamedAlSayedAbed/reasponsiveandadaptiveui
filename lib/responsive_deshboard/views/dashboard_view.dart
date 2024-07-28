import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/views/desktop_adaptive_layout.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/adaptive_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DesktopAdaptiveLayout()),
    );
  }
}
