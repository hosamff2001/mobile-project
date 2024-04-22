import 'package:appnest/core/utliz/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utliz/cashmemory.dart';
import '../../data/onborading_model.dart';

class OnBoradingBottomBar extends StatelessWidget {
  const OnBoradingBottomBar(
      {super.key, required this.bordingcontroller, required this.index});
  final PageController bordingcontroller;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        SmoothPageIndicator(
            controller: bordingcontroller,
            effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                dotHeight: 10,
                activeDotColor: Colors.pinkAccent,
                dotWidth: 10,
                spacing: 5),
            count: onBradingModel.length),
        const Spacer(),
        FloatingActionButton(
          onPressed: () {
            if (bordingcontroller.page == 2) {
              CashHelper.setdata(key: "onBoarding", value: true);
              GoRouter.of(context).pushReplacement(MyRoute.kHomeView);
            } else {
              bordingcontroller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            }
          },
          child: index == 2
              ? const Icon(Icons.done)
              : const Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }
}
