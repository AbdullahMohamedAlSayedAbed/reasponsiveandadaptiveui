import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/small_project/models/drawer_item_model.dart';

import 'custom_drawer_item.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(name: 'DashedBoard', icon: Icons.home),
    DrawerItemModel(name: 'settings', icon: Icons.settings),
    DrawerItemModel(name: 'About', icon: Icons.info),
    DrawerItemModel(name: 'Logout', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      elevation: 0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 56,
            )),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CustomDrawerItem(drawerItemModel: items[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
