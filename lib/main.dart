import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider_state_management/why_provider.dart';

import 'provider/count_provider.dart';
import 'screen/count_example.dart';
// import 'stateful_widget_screen.dart';

// import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CountExample(),
      ),
    );
  }
}
