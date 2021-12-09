import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class StepperExample extends StatefulWidget {
  const StepperExample({Key key}) : super(key: key);

  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {

  // Here we have created list of steps that
  // are required to complete the form
  List<Step> stepList() => [
    const Step(title: Text('Account'), content: Center(child: Text('Account'),)),
    const Step(title: Text('Address'), content: Center(child: Text('Address'),)),
    const Step(title: Text('Confirm'), content: Center(child: Text('Confirm'),))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text('GeeksforGeeks',style: TextStyle(color: Colors.white), ),
        ),

        // Here we have initialized the stepper widget
        body: Stepper(
          steps: stepList(),
        )
    );
  }
}