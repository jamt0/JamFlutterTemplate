abstract class ExampleEvent {}

class ExampleRequest extends ExampleEvent {
  final int params;

  ExampleRequest({required this.params});
}
