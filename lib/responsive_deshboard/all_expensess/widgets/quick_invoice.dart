import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reasponsiveandadaptiveui/core/widgets/custom_background_container.dart';

import '../../../core/widgets/custom_button.dart';
import 'latest_transaction_widget.dart';
import 'quick_invoice_header.dart';
import 'title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransactionWidget(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
          thickness: 1,
        ),
        QuickInvoiceFormAndButtons(),
      ],
    ));
  }
}

class QuickInvoiceFormAndButtons extends StatelessWidget {
  const QuickInvoiceFormAndButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hintText: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
            SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              buttonText: 'Add more details',
              backgroundColor: Colors.transparent,
            )),
            SizedBox(width: 24),
            Expanded(
                child: CustomButton(
              buttonText: 'Send Money',
              color: Colors.white,
            )),
            SizedBox(height: 24),
          ],
        )
      ],
    );
  }
}
