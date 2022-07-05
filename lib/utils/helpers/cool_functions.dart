import 'package:telling/models/error_input.dart';
import 'package:telling/data/models/response_api.dart';
import 'package:collection/collection.dart';

String? getMessageErrorInput(
  String idInput,
  List<ErrorInputMessage>? errors,
) {
  ErrorInputMessage? errorInput = errors?.firstWhereOrNull(
    (error) => error.id == idInput,
  );
  return errorInput?.message;
}

bool? getErrorInput(
  String idInput,
  List<ErrorInputMessage>? errors,
) {
  ErrorInputMessage? errorInput = errors?.firstWhereOrNull(
    (error) => error.id == idInput,
  );
  return errorInput?.id == null ? null : true;
}

ErrorInput getErrorInputComplete(
    String idInput, List<ErrorInputMessage>? errors) {
  return ErrorInput(
    error: getErrorInput(idInput, errors),
    message: getMessageErrorInput(idInput, errors),
  );
}
