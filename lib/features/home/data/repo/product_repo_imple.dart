import 'package:appnest/core/utliz/dio.dart';
import 'package:appnest/core/utliz/failure.dart';

import 'package:appnest/features/home/data/producats_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'product_repo.dart';

class ProductRepoImplentation extends ProductRepo {
  @override
  Future<Either<Failure, List<Producats>>> getAllProducts() async {
    try {
      var response = await DioHelper.get(url: '/products');
      List<Producats> products = [];
      response.data["products"].forEach((element) {
        products.add(Producats.fromJson(element));
      });
      return Right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(
        e.toString(),
      ));
    }
  }
}
