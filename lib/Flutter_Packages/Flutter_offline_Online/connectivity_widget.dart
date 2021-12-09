import 'package:flutter/material.dart';
import 'package:connectivity_widget/connectivity_widget.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ConnectivityWidget(
        onlineCallback: _incrementCounter,
        builder: (context, isOnline) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "${isOnline ? 'Online' : 'Offline'}",
                style: TextStyle(
                    fontSize: 30, color: isOnline ? Colors.green : Colors.red),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Number of times we connected to the internet:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}