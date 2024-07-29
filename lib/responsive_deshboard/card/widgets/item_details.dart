import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: [
    //         CircleAvatar(radius: 6, backgroundColor: itemDetailsModel.color),
    //         const SizedBox(width: 12),
    //         Text(itemDetailsModel.title, style: AppStyles.styleRegular16),
    //         const SizedBox(width: 24),
    //         Text(itemDetailsModel.value, style: AppStyles.styleMedium16),
    //       ],
    //     ),
    //   ),
    // );

    return ListTile(
      leading: CircleAvatar(radius: 6, backgroundColor: itemDetailsModel.color),
      title: Text(itemDetailsModel.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(itemDetailsModel.value, style: AppStyles.styleMedium16(context)),
    );
  }
}
