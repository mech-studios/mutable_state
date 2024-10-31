Adds mutableStateOf like native android.

## Features

Adds a new MutableState which replaces the the Old State.

Adds a new MutableVar type which is returned from mutableStateOf but can be used for other purposes

## Getting started

Add "mutable_state: ^latest_version" to pubspec.yaml

## Usage
```dart
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

```
