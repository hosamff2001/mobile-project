import 'dart:async';

import 'package:appnest/features/exploar/presentation/view/exploar_view.dart';
import 'package:appnest/features/favourite/presentation/view/favourite_view.dart';
import 'package:appnest/features/home/data/dumy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../about/presentation/view/about_view.dart';
import '../view/widgets/home_details_view.dart';

part 'main_manger_state.dart';

class MainMangerCubit extends Cubit<MainMangerState> {
  MainMangerCubit() : super(MainMangerInitial());
  int activeIndex = 0;
  static getobject(BuildContext context) =>
      BlocProvider.of<MainMangerCubit>(context);

  initsplash(context) {
    Timer(const Duration(seconds: 5), () {
      emit(GoToHomeScreenState());
    });
  }

  List<IconData> icons = const [
    Icons.home_filled,
    Icons.manage_search_outlined,
    Icons.favorite_border_outlined,
    Icons.person
  ];
  void changeIndex(int index) {
    activeIndex = index;
    emit(MainMangerChangeIndex());
  }

  List<Widget> screens = const [
    HomeDetails(),
    ExploarScreen(),
    Favourite(),
    AboutDetails()
  ];

  List<Producats> cartlist = [];
  void addtocart(Producats selectproducat) {
    if (cartlist.isEmpty) {
      cartlist.add(selectproducat);
      emit(AddToCart());
    } else {
      for (var element in cartlist) {
        if (element.name == selectproducat.name) {
          cartlist.remove(selectproducat);
          emit(RemoveFromCart());
          return;
        }
      }
      cartlist.add(selectproducat);
      
      emit(AddToCart());
    }
  }
}
