part of 'counter_bloc.dart';

// @immutable
// sealed class CounterEvent {}

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterDecrementPressed extends CounterEvent {}

class CounterResset extends CounterEvent {}