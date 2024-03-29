import 'package:flutter/material.dart';

import '../../../../../../../../../main.dart';
import '../action/increase_count.dart';

@JuneViewEvent()
clickIncrementButtonEvent(BuildContext context) {
  increaseCountAction();
}
