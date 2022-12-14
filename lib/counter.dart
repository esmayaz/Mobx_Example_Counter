import 'package:mobx/mobx.dart';
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-classflutter pub run build_runner watch --delete-conflicting-outputs
abstract class _Counter with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
  @action
  void decrement() {
    value--;
  }
}