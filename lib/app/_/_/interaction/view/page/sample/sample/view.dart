import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class SampleView extends StatefulWidget {
  SampleView({super.key});

  @override
  State<SampleView> createState() => StateChild();
}

class SampleViewState extends State<SampleView> with StateMother {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SampleView View")
              .textStyle(Theme.of(context).textTheme.displaySmall!)
              .fontWeight(FontWeight.bold)
              .textAlignment(TextAlign.center)
              .center(),
          Text("Counter: $counter")
              .textStyle(Theme.of(context).textTheme.displaySmall!)
              .fontWeight(FontWeight.bold)
              .textAlignment(TextAlign.center)
              .center(),
          Gap(20),
          ElevatedButton(
            onPressed: () {
              clickIncrementButtonEvent(context);
            },
            child: Text("Increment"),
          ),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: SampleView());
}