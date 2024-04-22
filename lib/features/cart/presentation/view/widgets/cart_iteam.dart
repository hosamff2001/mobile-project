import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../../../home/presentation/cubit/main_manger_cubit.dart';

class CartIteamWidgets extends StatelessWidget {
  const CartIteamWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<MainMangerCubit, MainMangerState>(
        builder: (context, state) {
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * .75,
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: MainMangerCubit.getobject(context).cartlist.length,
              itemBuilder: (context, index) {
                var item = MainMangerCubit.getobject(context).cartlist[index];
                return Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 100,
                        child: Container(
                          width: 200,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                30), // adjust the value as needed
                            border: Border.all(
                              color: Colors.grey, // set border color to gray
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                30), // same value as the Container
                            child: Image.network(
                              item.image,
                              fit: BoxFit
                                  .cover, // this will make the image cover the entire container
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Text(item.name, style: Styles.textStyle14),
                          Row(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                focusColor: Colors.red,
                                splashColor: Colors.red,
                                child: const Icon(Icons.remove),
                              ),
                              Text(
                                "0",
                                style: Styles.textStyle14,
                              ),
                              MaterialButton(
                                  onPressed: () {},
                                  child: const Icon(Icons.add)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                MainMangerCubit.getobject(context)
                                    .addtocart(item);
                              },
                              icon: const Icon(Icons.close)),
                          Text("\$ ${item.price}", style: Styles.textStyle18),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
