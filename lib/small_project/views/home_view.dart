import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/home_view_body.dart';
import 'package:reasponsiveandadaptiveui/small_project/views/widgets/my_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffDBDBDB),
        drawer: const MyDrawer(),
        appBar: buildAppBar(context),
        body: const HomeViewBody());
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 932
          ? AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              backgroundColor: Colors.black,
            )
          : null;
  }
}
