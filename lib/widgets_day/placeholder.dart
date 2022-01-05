import 'package:flutter/material.dart';

class PlacehomderExample extends StatefulWidget {
  const PlacehomderExample({Key key}) : super(key: key);

  @override
  _PlacehomderExampleState createState() => _PlacehomderExampleState();
}

class _PlacehomderExampleState extends State<PlacehomderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Placeholder(
              color: Colors.blue,
              fallbackHeight: 100,
              fallbackWidth: 50,
              strokeWidth: 20,
            )
          ],
        ),
      ),
    );
  }
}
