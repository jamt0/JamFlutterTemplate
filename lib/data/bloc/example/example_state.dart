import 'package:equatable/equatable.dart';
import 'package:telling/models/failures.dart';
import 'package:telling/utils/constants/enums.dart';

class ExampleState extends Equatable {
  final RequestStatus exampleRequestStatus;
  final Failure? exampleRequestError;
  final int? example;

  ExampleState(
      {this.exampleRequestStatus = RequestStatus.initial,
      this.exampleRequestError,
      this.example});

  ExampleState copyWith({
    RequestStatus? exampleRequestStatus,
    Failure? exampleRequestError,
    int? example,
  }) {
    return ExampleState(
      exampleRequestStatus: exampleRequestStatus ?? this.exampleRequestStatus,
      exampleRequestError: exampleRequestError ?? this.exampleRequestError,
      example: example ?? this.example,
    );
  }

  ExampleState cleanState({
    bool exampleRequestStatus = false,
    bool exampleRequestError = false,
    bool example = false,
  }) {
    return ExampleState(
      exampleRequestStatus: exampleRequestStatus
          ? RequestStatus.initial
          : this.exampleRequestStatus,
      exampleRequestError:
          exampleRequestError ? null : this.exampleRequestError,
      example: example ? null : this.example,
    );
  }

  @override
  List<Object?> get props =>
      [exampleRequestStatus, exampleRequestError, example];
}
