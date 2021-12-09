import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/Flutter_Packages/BLoC/CounterApp/BloC/counter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [

              StreamBuilder<int>(
                stream: _counterBloc.counterStream,
                  initialData: 0,
                  builder:(context, snapshot)
                  {
                    final counter = snapshot.data;
                    return  Text('$counter');
                  } ,
              ),
              ElevatedButton(
                  onPressed: _incrementCounter,

              child: Text('Press Button'))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _incrementCounter() {

    _counterBloc.eventSink.add(CounterEvent.Increment);
  }



}


