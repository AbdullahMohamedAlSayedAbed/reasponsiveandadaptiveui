import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_images.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/drawer/models/drawer_item_model.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/drawer/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesConvertCard),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesChartInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: DrawerItem(
                drawerItemModel: drawerItems[index],
                isActive: activeIndex == index,
              ));
        });
  }
}
