import 'package:dnd/cubits/switch_cubit.dart';
import 'package:dnd/cubits/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        BlocSelector<SwitchCubit, SwitchState, bool>(
            selector: (state) => state.swithcFlag1,
            builder: (context, val) => GetSWitch(
                  action: (val) {
                    context.read<SwitchCubit>().switchToggle1(val);
                  },
                  value: val,
                )),
        BlocSelector<SwitchCubit, SwitchState, bool>(
            selector: (state) => state.swithcFlag2,
            builder: (context, val) => GetSWitch(
                  action: (val) {
                    context.read<SwitchCubit>().switchToggle2(val);
                  },
                  value: val,
                )),
        BlocSelector<SwitchCubit, SwitchState, bool>(
            selector: (state) => state.swithcFlag3,
            builder: (context, val) => GetSWitch(
                  action: (val) {
                    context.read<SwitchCubit>().switchToggle3(val);
                  },
                  value: val,
                )),
      ],
    ));
  }
}

class GetSWitch extends StatelessWidget {
  final Function(bool) action;
  final bool value;
  const GetSWitch({
    Key? key,
    required this.action,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('This is called');
    return Switch(
      value: value,
      onChanged: (bool value) {
        action(value);
      },
    );
  }
}
