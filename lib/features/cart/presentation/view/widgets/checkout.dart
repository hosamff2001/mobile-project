import 'package:flutter/material.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/utliz/stayles.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({
    super.key,
    required this.sum,
  });

  final double sum;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "Go to Checkout",
              style: Styles.textStyle14.copyWith(color: ColorManager.white),
            ),
            const Spacer(),
            Text("\$$sum",
                style: Styles.textStyle14.copyWith(color: ColorManager.white))
          ],
        ));
  }
}
