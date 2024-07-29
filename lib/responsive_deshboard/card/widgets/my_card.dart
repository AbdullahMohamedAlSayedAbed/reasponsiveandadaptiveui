import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_images.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          padding: const EdgeInsets.only(right: 24),
          decoration: ShapeDecoration(
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.imagesMaskGroup),
              ),
              color: const Color(0xff4EB7F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, right: 42 - 24, top: 16),
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                subtitle: const Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20,
                ),
                // trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Spacer(),
              Text('0918 8124 0042 8129',
                  style:
                      AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
              Text('12/20 - 124',
                  style:
                      AppStyles.styleRegular16.copyWith(color: Colors.white)),
              const Flexible(child: SizedBox(height: 26)),
            ],
          ),
        ));
  }
}
