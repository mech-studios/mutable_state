import 'package:flutter/material.dart';
import 'package:mutable_state/mutable_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late MutableVar<String> name;

  @override
  void initState() {
    super.initState();
    name = mutableStateOf('David');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              if (name.value == 'David') {
                name.value = 'John';
              } else {
                name.value = 'David';
              }
            },
            child: Text(name.value),
          ),
        ),
      ),
    );
  }
}
