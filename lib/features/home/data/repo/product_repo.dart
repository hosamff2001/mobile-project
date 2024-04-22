import 'package:dartz/dartz.dart';

import '../../../../core/utliz/failure.dart';
import '../producats_model.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<Producats>>> getAllProducts();
}
