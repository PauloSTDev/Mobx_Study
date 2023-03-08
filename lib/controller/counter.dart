import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  // @observable
  // int _value = 0;

  // @computed
  // int get value => _value;

  // Annotation which makes getters for private variables.
  @readonly
  int _value = 0;

  // actions are methods
  @action
  void increment() {
    _value++;
  }

  @action
  void decrement() {
    _value--;
  }

  @action
  void reset() {
    _value = 0;
  }
}
