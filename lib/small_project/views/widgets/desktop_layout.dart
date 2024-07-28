import 'package:flutter/cupertino.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/my_drawer.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/tablet_layout.dart';

import 'custom_desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: MyDrawer()),
        Expanded(flex: 3, child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TabletLayout(),
        )),
        Expanded(child: CustomDesktopWidget()),
      ],
    );
  }
}
