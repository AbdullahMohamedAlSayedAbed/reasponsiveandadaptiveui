import 'package:flutter/cupertino.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/custom_sliver_grid.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        CustomSliverGrid(),
        CustomSliverList()
      ],
    );
  }
}
