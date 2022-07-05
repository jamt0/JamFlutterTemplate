import 'package:telling/data/models/base_api.dart';
import 'package:telling/data/models/response_api.dart';

class ExampleApi extends BaseApi {
  Future<ResponseApi<void>> exampleRequest({required int params}) async {
    return super.post(
      url: "/example",
      body: {},
      mapper: (data) => data,
    );
  }
}
