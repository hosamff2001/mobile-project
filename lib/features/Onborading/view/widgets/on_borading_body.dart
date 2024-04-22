import 'package:flutter/material.dart';

import '../../../../core/utliz/stayles.dart';
import '../../data/onborading_model.dart';

class OnBradingBody extends StatelessWidget {
  const OnBradingBody({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          onBradingModel[index].title,
          style: Styles.textStyle28.copyWith(),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          onBradingModel[index].description,
          style: Styles.textStyle14,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
