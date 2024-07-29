import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/dots_indicator.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/my_card_page_view.dart';

class MyCardsSections extends StatefulWidget {
  const MyCardsSections({super.key});

  @override
  State<MyCardsSections> createState() => _MyCardsSectionsState();
}

class _MyCardsSectionsState extends State<MyCardsSections> {
  late PageController? controller;
  int currentPage = 0;
  @override
  void initState() {
    controller = PageController();
    controller!.addListener(() {
      setState(() {
        currentPage = controller!.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          width: 420,
          child: Text('My card', style: AppStyles.styleSemiBold20(context)),
        ),
        const SizedBox(height: 20),
        MyCardsPageView(
          controller: controller!,
        ),
        const SizedBox(height: 20),
        DotsIndicator(
          currentIndex: currentPage,
        ),
      ],
    );
  }
}
