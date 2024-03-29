import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../item_view/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ItemView(
          icon: Icons.settings,
          label: "Settings",
          onPressed: (context) async {},
        ),
        ItemView(
          icon: Icons.shopping_bag_outlined,
          label: "Shop",
          onPressed: (context) async {},
        ),
        ItemView(
          icon: Icons.timelapse_rounded,
          label: "My activity",
          onPressed: (context) async {},
        ),
        ItemView(
          icon: Icons.history,
          label: "Archive",
          onPressed: (context) async {},
        ),
        ItemView(
          icon: Icons.qr_code_2,
          label: "QR code",
          onPressed: (context) async {},
        ),
        Gap(20),
      ],
    ).padding(vertical: 20, horizontal: 20);
  }
}

main() async {
  return buildApp(appHome: NewView());
}
