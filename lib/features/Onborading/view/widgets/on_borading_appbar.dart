import 'package:appnest/core/utliz/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utliz/cashmemory.dart';
import '../../../../core/utliz/stayles.dart';

class OnBoradingAppBar extends StatelessWidget {
  const OnBoradingAppBar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${index + 1}/3",
              style: Styles.textStyle18.copyWith(color: Colors.black)),
          TextButton(
              onPressed: () {
                CashHelper.setdata(key: "onBoarding", value: true);

               GoRouter.of(context).pushReplacement(MyRoute.kHomeView);
              },
              child: Text(
                "Skip",
                style: Styles.textStyle18.copyWith(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
