import 'package:appnest/features/home/presentation/cubit/main_manger_cubit.dart';
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
        onPressed: () {
          //show dialog for checkout if sum is not 0 else show snackbar

          if (sum != 0) {
            showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    title: const Text("Checkout"),
                    content: const Text("Are you sure you want to checkout?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(ctx);
                          },
                          child: const Text("No")),
                      TextButton(
                          onPressed: () {
                            //checkout
                            Navigator.pop(ctx);
                            MainMangerCubit.getobject(context).removefromcart();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Checkout Successful"),
                                backgroundColor: Colors.green,
                              ),
                            );
                          },
                          child: const Text("Yes"))
                    ],
                  );
                });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Cart is empty"),
              ),
            );
          }
        },
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
