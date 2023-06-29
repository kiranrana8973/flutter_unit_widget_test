import 'package:flutter/material.dart';
import 'package:flutter_test_app/model/arithmetic.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  late Arithmetic arithmetic;
  final gap = const SizedBox(height: 8);
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: firstController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Number',
              ),
            ),
            gap,
            TextField(
              controller: secondController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Second Number',
              ),
            ),
            gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  arithmetic = Arithmetic();
                  setState(() {
                    result = arithmetic.add(
                      int.parse(firstController.text),
                      int.parse(secondController.text),
                    );
                  });
                },
                child: const Text('Add'),
              ),
            ),
            gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    arithmetic = Arithmetic();
                    result = arithmetic.sub(
                      int.parse(firstController.text),
                      int.parse(secondController.text),
                    );
                  });
                },
                child: const Text('Sub'),
              ),
            ),
            gap,
            Text(
              'Result: $result',
              style: Theme.of(context).textTheme.titleLarge!,
            ),
          ],
        ),
      ),
    );
  }
}
