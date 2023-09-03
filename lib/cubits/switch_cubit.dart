import 'package:dnd/cubits/switch_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchCubit extends Cubit<SwitchState> {
  SwitchCubit()
      : super(const SwitchState(
          swithcFlag1: false,
          swithcFlag2: false,
          swithcFlag3: false,
        ));

  void switchToggle1(bool status) {
    emit((state.copyWith(switch1: status)));
  }

  void switchToggle2(bool status) {
    emit((state.copyWith(switch2: status)));
  }

  void switchToggle3(bool status) {
    emit((state.copyWith(switch3: status)));
  }
}
