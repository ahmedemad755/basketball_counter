import 'package:basketball_counter_app/homescrean.dart';

import 'bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const pointsCounter());
}

// ignore: camel_case_types
class pointsCounter extends StatefulWidget {
  const pointsCounter({Key? key}) : super(key: key);

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

// ignore: camel_case_types
class _pointsCounterState extends State<pointsCounter> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
