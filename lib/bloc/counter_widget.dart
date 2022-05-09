import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_reference/bloc/counter.dart';

import 'counter.dart';

class CounterWidget extends StatelessWidget {
  final title;

  // ignore: use_key_in_widget_constructors
  const CounterWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocCounter>(
      create: (context) => BlocCounter(),
      child: const BlocCounterWidget(),
    );
  }
}

class BlocCounterWidget extends StatelessWidget {
  const BlocCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.bloc<BlocCounter>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Counter App'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<BlocCounter,CounterState>(
                builder: (context, count) =>
                    Center(child: Text('You have pressed it:$count')))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => counterBloc.add(const Increment()),
            child: const Icon(Icons.add)));
  }
}
