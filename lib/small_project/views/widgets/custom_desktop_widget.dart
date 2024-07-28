import 'package:flutter/cupertino.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/custom_item.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/custom_item2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        Expanded(flex: 2, child: CustomItem()),
        SizedBox(height: 16),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}
