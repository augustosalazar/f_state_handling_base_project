import 'package:f_state_handling_base_project/ui/providers/my_color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () =>
                  Provider.of<MyColorProvider>(context, listen: false)
                      .changeColor(),
              child: const Text("Change color"),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Consumer<MyColorProvider>(
                builder: (context, myColor, child) {
                  return Container(
                    color: myColor.isRed ? Colors.red : Colors.blue,
                    child: const Center(child: Text("This will change color")),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
