import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/Flutter_Packages/BLoC/CounterApp2/BloC/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent2,int>{

  CounterBloc():super(0);

  @override
  Stream<int> mapEventToState(CounterEvent2 event)async* {

    switch(event){

      case CounterEvent2.increment:
      yield state +1;
      break;
      default:break;
    }
  }
}