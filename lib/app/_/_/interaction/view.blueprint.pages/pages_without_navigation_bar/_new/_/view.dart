import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          //////////////////////
          Container().backgroundColor(Colors.red),
          Container().backgroundColor(Colors.blue),
          Container().backgroundColor(Colors.yellow),
          Container().backgroundColor(Colors.green),
          //////////////////////
        ],
      ),
      floatingActionButton: FloatingActionButtonKit(
        button1: (context) {
          setState(() {
            selectedIndex = 1;
          });
        },
        button2: (context) {
          setState(() {
            selectedIndex = 2;
          });
        },
        button3: (context) {
          setState(() {
            selectedIndex = 3;
          });
        },
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
