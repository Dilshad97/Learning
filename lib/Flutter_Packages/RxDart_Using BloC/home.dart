import 'package:flutter/material.dart';
import 'package:learning/Flutter_Packages/RxDart_Using%20BloC/BloC/BloC.dart';


class RxDartExample extends StatefulWidget {
  RxDartExample({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RxDartExampleState createState() => new _RxDartExampleState();
}

class _RxDartExampleState extends State<RxDartExample> {
  CounterBloc _counterBloc = new CounterBloc(initialCount: 0);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'You have pushed the button this many times:',
              ),
              StreamBuilder(
                stream: _counterBloc.counterObservable,
                builder: (context, snapshot) {
                  return Text('${snapshot.data}',
                      style: Theme.of(context).textTheme.display1);
                },
              )
            ],
          ),
        ),
        floatingActionButton: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: new FloatingActionButton(
                    onPressed: _counterBloc.increment,
                    tooltip: 'Increment',
                    child: new Icon(Icons.add),
                  )),
              new FloatingActionButton(
                onPressed: _counterBloc.decrement,
                tooltip: 'Decrement',
                child: new Icon(Icons.remove),
              ),
            ]));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _counterBloc.dispose();
  }
}
