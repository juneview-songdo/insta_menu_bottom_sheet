import '../../../../../../../../../main.dart';

import '../view.dart';

@JuneViewAction()
increaseCountAction() {
  var state = SampleViewState(); // do not change this line
  state.counter = state.counter + 1;
  updateState(() {});
}