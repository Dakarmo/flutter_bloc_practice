import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tuto/bloc/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});
  @override
  Widget build(BuildContext context) {
   final counterBloc = context.read<CounterBloc>();
// print(counterBloc.state.count);

   return Scaffold(
    appBar: AppBar(
      title: const Text('Image(s) generated')
    ),
    body: Center(
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              for(int index = 0; index < state.count; index++)
                Positioned(
                  left: Random().nextInt(250).toDouble(),
                  top: Random().nextInt(250).toDouble(),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset('images/death.png'),
                      ),
                      
                    ],
                  ),
                ),
                Text(
                  state.count.toString(),
                ),
            ],
          );
        },
      ),
      
    ),
    floatingActionButton: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: () {
            counterBloc.add(CounterIncrementPressed());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          onPressed: () {
            counterBloc.add(CounterDecrementPressed());
          },
          child: const Icon(Icons.remove) ,
        ),
        const SizedBox(
          height: 10.0,
        ),
        FloatingActionButton(
          onPressed: () {
            counterBloc.add(CounterResset());
          },
          child: const Icon(Icons.exposure_zero),
        ),
      ],
     
    ),
    
   );
  }
}