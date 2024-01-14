
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utliz/routers.dart';

class FloatActionButton extends StatelessWidget {
  const FloatActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
      GoRouter.of(context).push(MyRoute.kCartScreen);
      },
      child: const Icon(
        Icons.shopping_cart_outlined,
        color: Colors.white,
      ),
      //params
    );
  }
}
