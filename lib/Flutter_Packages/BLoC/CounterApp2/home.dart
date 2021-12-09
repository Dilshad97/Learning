import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning/Flutter_Packages/BLoC/CounterApp2/BloC/counter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final CounterBloc _counterBloc =
  //     BlocProvider.of<CounterBloc>(context, listen: false);
  // int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Column(
              children: [
                Text("Block Counter Example"),
                SizedBox(
                  height: 200,
                ),
                // Text("$counter"),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      // _counterBloc.add(CounterEvent2.increment);
                    },
                    child: Text("Press"))
              ],
            );
          },
        ),
      ),
    ));
  }
}
