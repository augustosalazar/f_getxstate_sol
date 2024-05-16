import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/simple_controller.dart';

class W1 extends StatelessWidget {
  const W1({super.key});

  @override
  Widget build(BuildContext context) {
    final SimpleController controller = Get.find();
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.value.toString())),
          ElevatedButton(
              onPressed: () => controller.increment(), child: Text('Increment'))
        ],
      ),
    );
  }
}
