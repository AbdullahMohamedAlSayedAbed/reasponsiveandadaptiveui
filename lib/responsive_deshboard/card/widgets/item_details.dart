import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          CircleAvatar(radius: 6, backgroundColor: itemDetailsModel.color),
      title: Text(itemDetailsModel.title, style: AppStyles.styleRegular16),
      trailing:
          Text(itemDetailsModel.value, style: AppStyles.styleMedium16),
    );
  }
}
