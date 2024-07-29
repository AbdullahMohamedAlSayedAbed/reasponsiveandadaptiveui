import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/drawer/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return !isActive
        ? ListTile(
            leading: SvgPicture.asset(drawerItemModel.image),
            title: Text(
              drawerItemModel.title,
              style: AppStyles.styleRegular16(context),
            ),
          )
        : ListTile(
            leading: SvgPicture.asset(drawerItemModel.image),
            trailing: Container(
              color: const Color(0xff4EB7F2),
              width: 3.27,
            ),
            title: Text(
              drawerItemModel.title,
              style: AppStyles.styleBold16(context),
            ));
  }
}
