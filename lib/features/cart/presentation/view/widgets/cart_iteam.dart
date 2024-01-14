
import 'package:flutter/material.dart';

import '../../../../../core/utliz/stayles.dart';
import '../../../../home/presentation/cubit/main_manger_cubit.dart';

class CartIteamWidgets extends StatelessWidget {
  const CartIteamWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * .75,
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount:
              MainMangerCubit.getobject(context).cartlist.length,
          itemBuilder: (context, index) {
            var item =
                MainMangerCubit.getobject(context).cartlist[index];
            return Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Image.asset(item.image),
                ),
                Column(
                  children: [
                    Text(item.name, style: Styles.textStyle18),
                    Text(item.descreption),
                    Row(
                      children: [
                        MaterialButton(
                            onPressed: () {},
                            child: const Icon(Icons.remove)),
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
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          MainMangerCubit.getobject(context)
                              .addtocart(item);
                        },
                        icon: const Icon(Icons.close)),
                    Text("\$ ${item.price}",
                        style: Styles.textStyle18),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
