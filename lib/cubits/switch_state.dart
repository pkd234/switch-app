import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool swithcFlag1;
  final bool swithcFlag2;
  final bool swithcFlag3;

  const SwitchState({
    required this.swithcFlag1,
    required this.swithcFlag2,
    required this.swithcFlag3,
  });
  SwitchState copyWith({bool? switch1, bool? switch2, bool? switch3}) =>
      SwitchState(
        swithcFlag1: switch1 ?? swithcFlag1,
        swithcFlag2: switch2 ?? swithcFlag2,
        swithcFlag3: switch3 ?? swithcFlag3,
      );

  @override
  List<Object?> get props => [swithcFlag1, swithcFlag2, swithcFlag3];
}

// fo
