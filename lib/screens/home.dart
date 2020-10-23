import 'package:counter_app/bloc/counterBloc.dart';
import 'package:counter_app/bloc/counterEvents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // counter bloc accessor
    CounterBloc cb = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text('Counter App Bloc Pattern'),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                cb.add(CounterEvents.remove);
              },
            ),
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) => Text('$state'),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                cb.add(CounterEvents.add);
              },
            )
          ],
        ),
      ),
    );
  }
}
