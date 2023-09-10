import 'package:api_exam/core/database/api/api_consumer.dart';
import 'package:api_exam/core/database/api/end_points.dart';
import 'package:api_exam/core/database/errors/exceptions.dart';
import 'package:api_exam/core/database/services/service_locator.dart';
import 'package:dartz/dartz.dart';

class HomeRepository {
  Future<Either<String, List>> getCats() async {
    try {
      final response = await sl<ApiConsumer>().get(EndPoints.getImages);
      return Right(response.data);
    } on ServerExceptions catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }
}
