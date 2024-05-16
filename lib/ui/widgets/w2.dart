import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/simple_controller.dart';

class W2 extends StatelessWidget {
  const W2({super.key});

  @override
  Widget build(BuildContext context) {
    final SimpleController controller = Get.find();
    return Container(
      color: Colors.deepOrange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.value.toString())),
          ElevatedButton(onPressed: null, child: Text('Reset'))
        ],
      ),
    );
  }
}
