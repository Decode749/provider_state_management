import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/example_one_provider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({super.key});

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example One'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(
            builder: (BuildContext context, value, Widget? child) {
              return Slider(
                  value: value.value,
                  min: 0,
                  max: 1,
                  onChanged: (val) {
                    // print(value);
                    value.setValue(val);
                  });
            },
          ),
          Consumer<ExampleOneProvider>(
            builder: (BuildContext context, pro, Widget? child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.purpleAccent.withOpacity(pro.value),
                      child: const Center(
                        child: Text('Container 1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.orangeAccent.withOpacity(pro.value),
                      child: const Center(
                        child: Text('Container 2'),
                      ),
                    ),
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
