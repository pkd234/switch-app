import 'package:dnd/cubits/switch_cubit.dart';
import 'package:dnd/switch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MaterialApp(
      home: BlocProvider<SwitchCubit>(
        create: (context) => SwitchCubit(),
        child: const Center(child: SwitchScreen()),
      ),
    ));
