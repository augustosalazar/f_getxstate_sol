import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/simple_controller.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final SimpleController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.value.toString())),
            ElevatedButton(
                onPressed: () => controller.decrement(),
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
