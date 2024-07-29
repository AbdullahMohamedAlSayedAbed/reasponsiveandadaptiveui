import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_images.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/drawer/models/drawer_item_model.dart';

import 'drawer_item.dart';
import 'drawer_item_list_view.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvater1,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                DrawerItem(drawerItemModel: DrawerItemModel(title: 'Setting system',image: Assets.imagesSetting), isActive: false),
                DrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout account',image: Assets.imagesLogout), isActive: false),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
