import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ZoomDrawer(
        controller: zoomDrawerController,
        style: DrawerStyle.defaultStyle,
        menuScreen: Container(
          color: Colors.red,
          child: Text("Menu View")
              .textStyle(Theme.of(context).textTheme.headlineMedium!)
              .fontWeight(FontWeight.bold)
              .center(),
        ),
        mainScreen: Container(
          color: Colors.green,
          child: Text("Main View")
              .textStyle(Theme.of(context).textTheme.headlineMedium!)
              .fontWeight(FontWeight.bold)
              .center(),
        ),
        menuBackgroundColor: Colors.blue,
        borderRadius: 24.0,
        // showShadow: true,
        mainScreenTapClose: true,
        angle: 0.0,
        drawerShadowsBackgroundColor: Colors.grey,
        slideWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      floatingActionButton: FloatingActionButtonKit(
        button1: (context) {
          zoomDrawerController.toggle!();
        },
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
