part of 'main_manger_cubit.dart';

@immutable
sealed class MainMangerState {}

final class MainMangerInitial extends MainMangerState {}

final class AddToCart extends MainMangerState {}

final class RemoveFromCart extends MainMangerState {}

final class GoToHomeScreenState extends MainMangerState {}

final class MainMangerChangeIndex extends MainMangerState {}
