import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<WhyProvider> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      print(count++);
      setState(() {
      });
     });
  }
  @override
  Widget build(BuildContext context) {
    // print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}"),
          ),
          Center(
            child: Text(count.toString()),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print(count++);
          count++;
          setState(() {
            
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
