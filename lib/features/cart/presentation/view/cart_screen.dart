import 'package:appnest/core/resources/color_manager.dart';
import 'package:appnest/features/home/presentation/cubit/main_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/cart_iteam.dart';
import 'widgets/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Cart Screen")),
        ),
        backgroundColor: ColorManager.white,
        body: Column(
          children: [
            BlocBuilder<MainMangerCubit, MainMangerState>(
              builder: (context, state) {
                return const CartIteamWidgets();
              },
            ),
            BlocBuilder<MainMangerCubit, MainMangerState>(
              builder: (context, state) {
                double sum = 0;
                MainMangerCubit.getobject(context)
                    .cartlist
                    .forEach((element) => sum += element.price);
                return CheckoutWidget(sum: sum);
              },
            )
          ],
        ),
      ),
    );
  }
}
