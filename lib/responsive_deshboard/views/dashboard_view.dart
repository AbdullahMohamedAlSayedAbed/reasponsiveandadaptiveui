import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/size_config.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/drawer/widgets/custom_drawer.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/views/dash_board_mobile_layout.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/views/dashboard_tablet_layout.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/views/desktop_adaptive_layout.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/adaptive_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tabletSize ? const CustomDrawer() : null,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tabletSize
          ? AppBar(
              backgroundColor: const Color(0xfffafafa),
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    key.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const Padding(
                padding: EdgeInsets.only(top: 40),
                child: DashboardTabletLayout(),
              ),
          desktopLayout: (context) => const Padding(
                padding: EdgeInsets.only(top: 40),
                child: DesktopAdaptiveLayout(),
              )),
    );
  }
}
