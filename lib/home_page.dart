import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc8/blocs/counter_bloc.dart';
import 'package:flutter_counter_bloc8/events/counter_event.dart';
import 'package:flutter_counter_bloc8/states/counter_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Center(
          child: Text(state.counter.toString()),
        );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(CounterIncrement());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(CounterSetZero());
            },
            child: const Text('0'),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(CounterDecrement());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
