import 'package:flutter/material.dart';

import 'package:flutter_complete_reference/provider/count_widget.dart';
import 'package:provider/provider.dart';

import 'count.dart';

class Counter extends StatelessWidget {
  final String title;
  const Counter({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Count(),
        child: Consumer<Count>(builder: (_, value, __) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('My Counter App'),
              ),
              body: const CountWidget(),
              floatingActionButton: FloatingActionButton(
                  onPressed: () => value.increment(),
                  child: const Icon(Icons.add)));
        }));
  }
}

// class CountOne extends StatelessWidget {
//   const CountOne({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final count = Provider.of<Count>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Counter App'),
//       ),
//       body: const CountWidget(),
//       floatingActionButton:
//           FloatingActionButton(onPressed: () => count.increment(),
//           child:const Icon(Icons.add))
//     );
//   }
// }