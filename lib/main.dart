import 'package:appnest/features/home/presentation/cubit/main_manger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/resources/theme_manager.dart';
import 'core/utliz/routers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainMangerCubit()..initsplash(context),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: MyRoute.router,
        title: 'Movies App',
        theme: getApplicationTheme(),
      ),
    );
  }
}
