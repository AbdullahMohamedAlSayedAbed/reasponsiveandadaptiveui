import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_images.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/models/user_info_model.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/drawer/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAveter2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAveter3,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAveter2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(items.length, (index) {
        return IntrinsicWidth(
          child: UserInfoListTile(
              image: items[index].image,
              title: items[index].title,
              subTitle: items[index].subTitle),
        );
      })),
    );
  }
}
