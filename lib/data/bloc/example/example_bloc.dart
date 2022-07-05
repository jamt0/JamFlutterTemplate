import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:telling/data/bloc/example/example_event.dart';
import 'package:telling/data/bloc/example/example_state.dart';
import 'package:telling/data/repositories/example_repository.dart';
import 'package:telling/models/failures.dart';
import 'package:telling/utils/constants/enums.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleRepository exampleRepository = ExampleRepository();

  final GlobalKey<NavigatorState> navigatorKey;

  ExampleBloc({required this.navigatorKey}) : super(ExampleState()) {
    on<ExampleRequest>(exampleRequest);
  }

  Future<void> exampleRequest(
    ExampleRequest event,
    Emitter<ExampleState> emit,
  ) async {
    emit(state.copyWith(
      exampleRequestStatus: RequestStatus.loading,
      exampleRequestError: Failure(error: null),
    ));

    await exampleRepository
        .exampleRequest(params: event.params)
        .then((either) async {
      await either.fold(
        (failure) async {
          emit(state.copyWith(
            exampleRequestStatus: RequestStatus.failed,
            exampleRequestError: failure,
          ));
        },
        (response) async {
          emit(state.copyWith(
            exampleRequestStatus: RequestStatus.success,
            exampleRequestError: Failure(error: false),
          ));
        },
      );
    }).catchError(
      (error) {
        emit(
          state.copyWith(
            exampleRequestStatus: RequestStatus.failed,
            exampleRequestError: error,
          ),
        );
      },
    );
  }
}
