import 'dart:developer';

abstract class CounterEvent {}

class CounterIncrement extends CounterEvent {}

class CounterDecrement extends CounterEvent {}

class CounterSetZero extends CounterEvent {}
