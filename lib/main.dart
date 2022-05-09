import 'package:flutter/material.dart';
import 'package:flutter_complete_reference/provider/counter.dart';

import 'bloc/counter_widget.dart';

import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const CounterWidget(title: 'Flutter Demo Home Page'),
    );
  }
}

