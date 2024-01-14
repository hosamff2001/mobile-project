import 'package:appnest/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/main_manger_cubit.dart';
import 'widgets/bottom_navigat_buttons.dart';
import 'widgets/float_action.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: const FloatActionButton(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const BottomNavigatButtons(),
            backgroundColor: ColorManager.white,
            body: BlocBuilder<MainMangerCubit, MainMangerState>(
                builder: (context, state) {
              return MainMangerCubit.getobject(context)
                  .screens[MainMangerCubit.getobject(context).activeIndex];
            })));
  }
}
