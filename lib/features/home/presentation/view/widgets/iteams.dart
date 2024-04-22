import 'package:appnest/features/home/presentation/cubit/main_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/utliz/stayles.dart';

class IteamsWidgets extends StatelessWidget {
  const IteamsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MainMangerCubit, MainMangerState>(
        builder: (context, state) {
          if (state is! GetProductLoading) {
            return SingleChildScrollView(
                child: SizedBox(
              width: 500,
              height: MediaQuery.sizeOf(context).height * 0.75,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 3),
                itemCount: MainMangerCubit.getobject(context).product.length,
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
                        Container(
                          width: 200,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                60), // adjust the value as needed
                            border: Border.all(
                              color: Colors.grey, // set border color to gray
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                60), // same value as the Container
                            child: Image.network(
                              MainMangerCubit.getobject(context)
                                  .product[index]
                                  .image,
                              fit: BoxFit
                                  .cover, // this will make the image cover the entire container
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Text(
                                MainMangerCubit.getobject(context)
                                    .product[index]
                                    .name,
                                style: Styles.textStyle16,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                MainMangerCubit.getobject(context)
                                    .product[index]
                                    .description,
                                style: Styles.textStyle12,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              " \$ ${MainMangerCubit.getobject(context).product[index].price}",
                              style: Styles.textStyle20,
                            ),
                            const Spacer(),
                            BlocBuilder<MainMangerCubit, MainMangerState>(
                              builder: (context, state) {
                                return ElevatedButton(
                                    onPressed: () {
                                      MainMangerCubit.getobject(context)
                                          .addtocart(
                                              MainMangerCubit.getobject(context)
                                                  .product[index]);
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
            ));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
