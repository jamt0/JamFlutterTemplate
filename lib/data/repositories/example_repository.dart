import 'package:telling/data/api/example_api.dart';
import 'package:telling/data/models/base_repository.dart';
import 'package:telling/models/failures.dart';
import 'package:dartz/dartz.dart';

class ExampleRepository extends BaseRepository {
  var exampleApi = ExampleApi();

  Future<Either<Failure, void>> exampleRequest({required int params}) async {
    return super
        .toEither(apiCall: () => exampleApi.exampleRequest(params: params));
  }
}
