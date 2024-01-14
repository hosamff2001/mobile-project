import 'package:appnest/features/home/presentation/cubit/main_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/utliz/stayles.dart';
import '../../../data/dumy_data.dart';

class IteamsWidgets extends StatelessWidget {
  const IteamsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: SizedBox(
        width: 500,
        height: MediaQuery.sizeOf(context).height * 0.75,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              crossAxisSpacing: 5,
              mainAxisSpacing: 3),
          itemCount: product.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                border: Border.all(
                  color: Colors.grey, // set border color to gray
                ),
              ),
              child: Column(
                children: [
                  Image.asset(product[index].image),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          product[index].name,
                          style: Styles.textStyle16,
                        ),
                        Text(product[index].descreption,
                            style: Styles.textStyle12),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ ${product[index].price}",
                        style: Styles.textStyle20,
                      ),
                      const Spacer(),
                      BlocBuilder<MainMangerCubit, MainMangerState>(
                        builder: (context, state) {
                          return ElevatedButton(
                              onPressed: () {
                                MainMangerCubit.getobject(context)
                                    .addtocart(product[index]);
                              },
                              child: Icon(
                                Icons.add,
                                color: ColorManager.white,
                              ));
                        },
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      )),
    );
  }
}
