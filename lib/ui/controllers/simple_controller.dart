import 'package:get/get.dart';

class SimpleController extends GetxController {
  final _value = 0.obs;

  int get value => _value.value;

  void increment() {
    _value.value++;
  }

  void decrement() {
    _value.value--;
  }
}
