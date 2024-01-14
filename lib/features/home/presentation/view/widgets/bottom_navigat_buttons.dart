import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../cubit/main_manger_cubit.dart';

class BottomNavigatButtons extends StatelessWidget {
  const BottomNavigatButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainMangerCubit, MainMangerState>(
      builder: (context, state) {
        return AnimatedBottomNavigationBar.builder(
          itemCount: MainMangerCubit.getobject(context).icons.length,
          tabBuilder: (index, isActive) {
            return Icon(
              MainMangerCubit.getobject(context).icons[index],
              color: isActive ? Colors.black : Colors.white,
            );
          },
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          backgroundColor: ColorManager.primary,
          elevation: 10,
          blurEffect: true,
          activeIndex: MainMangerCubit.getobject(context).activeIndex,
          onTap: (int index) {
            MainMangerCubit.getobject(context).changeIndex(index);
          },
        );
      },
    );
  }
}
