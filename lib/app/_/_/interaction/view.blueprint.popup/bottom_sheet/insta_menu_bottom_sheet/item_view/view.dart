import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ItemView extends StatefulWidget {
  ItemView({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final Future<void> Function(BuildContext) onPressed;

  @override
  State<ItemView> createState() => StateChild();
}

class ItemViewState extends State<ItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon),
        Gap(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.label,
                )
                    .fontSize(16)
                    .textAlignment(TextAlign.start)
                    .backgroundColor(Colors.transparent)
              ],
            ).expanded(),
            Container()
                .height(1)
                .backgroundColor(Colors.grey.withOpacity(0.15)),
          ],
        ).expanded(),
      ],
    ).height(55).backgroundColor(Colors.transparent).gestures(onTap: () async {
      await widget.onPressed(context);
      // Navigator.of(context).pop();
    });
  }
}

main() async {
  return buildApp(
      appHome: ItemView(
    icon: Icons.menu,
    label: "menu",
    onPressed: (context) async {
      print("clicked menu");
    },
  ));
}
