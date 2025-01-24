import 'package:flutter/material.dart';
import 'package:trip_manager/core/%20colors/core_colors.dart';
import 'package:trip_manager/core/components/space.dart';
import 'package:trip_manager/core/utils.dart';
import 'package:trip_manager/features/add/add_expense.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {navigateTo(context, const AddExpense());},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Space(
              height: 40,
            ),
            const Row(
              children: [
                Spacer(),
                Icon(Icons.settings,color: primaryColor, size: 30,)
              ],
            ),
            const Space(
              height: 10,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: primaryColor,
              child: const Center(
                child: Text('Current Month : Rs.6647'),
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
                child: Text('All Transactions'),
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
                child: Text('Create Groups'),
              ),
            ),
            const Space(
              height: 10,
            ),
           const Text("Recent Groups"),
            const Space(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: primaryColor,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Kodaikanal Trip', style: TextStyle(fontSize: 16),),
                    Text('Total Expense : Rs.8791', style: TextStyle(fontSize: 14),),
                    Text('Pending settlement : Rs.1789', style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
            ),
            const Space(
              height: 10,
            ),
            const Text("Settled Groups"),
            const Space(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: primaryColor,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Croog Trip', style: TextStyle(fontSize: 16),),
                    Text('Total Expense : Rs.9910', style: TextStyle(fontSize: 14),)
                  ],
                ),
              ),
            ),
            const Space(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: primaryColor,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Office outing', style: TextStyle(fontSize: 16),),
                    Text('Total Expense : Rs.7738', style: TextStyle(fontSize: 14),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
