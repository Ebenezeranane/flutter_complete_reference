import 'package:flutter/material.dart';
import 'package:flutter_complete_reference/provider/count.dart';
import 'package:provider/provider.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = Provider.of<Count>(context);
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          // ElevatedButton.icon(onPressed: ()=>count.increment(), icon:const Icon(Icons.plus_one), label: const Text('Add'),),
          Text("Youve pushed the button this many times:${count.currentCount}"),
        
        ],
      ),
    );
  }
}
