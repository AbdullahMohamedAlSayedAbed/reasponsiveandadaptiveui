import 'package:flutter/cupertino.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, containers) {
      if (containers.maxWidth < 800) {
        return mobileLayout(context);
      } else if (containers.maxWidth < 1200) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
