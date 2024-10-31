library mutable_state;

import 'package:flutter/material.dart';

extension MutableState<T extends StatefulWidget> on State<T> {
  MutableVar<V> mutableStateOf<V>(V initialValue) {
    return MutableVar(initialValue)..addListener(() => setState(() {}));
  }
}

class MutableVar<T> {
  T _value;
  final List<Function> _listeners = [];

  MutableVar(this._value);

  T get value => _value;

  set value(T newValue) {
    _value = newValue;
    for (var listener in _listeners) {
      listener();
    }
  }

  void addListener(Function listener) {
    _listeners.add(listener);
  }

  void removeListener(Function listener) {
    _listeners.remove(listener);
  }
}
