import 'package:f_state_handling_base_project/ui/controllers/my_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyColorController myColorController = Get.find();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => myColorController.changeColor(),
              child: const Text("Change color"),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Obx(
                () => Container(
                  color: myColorController.isRed ? Colors.red : Colors.blue,
                  child: const Center(child: Text("This will change color")),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
