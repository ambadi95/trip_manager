import 'package:flutter/material.dart';
import 'package:trip_manager/core/%20colors/core_colors.dart';
import 'package:trip_manager/core/components/space.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Space(
              height: 50,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: primaryColor,
              child: const Center(
                child: Text('Current Month'),
              ),
            ),
            const Space(
              height: 10,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: primaryColor,
              child: const Center(
                child: Text('Group'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
