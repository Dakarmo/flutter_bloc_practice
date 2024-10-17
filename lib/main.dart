import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tuto/bloc/counter_bloc.dart';
import 'package:flutter_bloc_tuto/pages/counter_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     home: BlocProvider(
  //       create: (context) =>CounterBloc(),
  //       child: const CounterPage(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterBloc(), 
          )
        ],
        child: const CounterPage(),
      ),
    );
  }
}
