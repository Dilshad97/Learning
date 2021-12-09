import 'dart:async';

enum CounterEvent {
  Increment,
}

class CounterBloc {
  /// StreamController to handle event stream
  final _eventController = StreamController<CounterEvent>();

  Stream<CounterEvent> get eventStream => _eventController.stream;

  Sink<CounterEvent> get eventSink => _eventController.sink;

  /// StreamController to handle event stream
  final _counterController = StreamController<int>();

  Stream<int> get counterStream => _counterController.stream;

  Sink<int> get counterSink => _counterController.sink;

  /// manage counter
  /// initial value of counter is 0
  int _counter = 0;


  /// Constructor
  CounterBloc(){

    eventStream.listen((CounterEvent event)  {

      if(event==CounterEvent.Increment){

        ++_counter;
        counterSink.add(_counter);
      }

    });
  }

  void dispose() {
    _counterController.close();
    _eventController.close();
  }
}
