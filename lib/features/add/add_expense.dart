

import 'package:flutter/material.dart';
import 'package:trip_manager/core/%20colors/core_colors.dart';
import 'package:trip_manager/core/components/space.dart';

import '../../core/utils.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Space(height: 40,),
             Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: (){
                    goBack(context);
                  },
                    child: const Icon(Icons.close,size: 35,)),
              ],
            ),
            const Space(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Self', style: TextStyle(fontSize: 18),),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Group', style: TextStyle(fontSize: 18),),
                    ),
                  ),
                ),

              ],
            ),
            const Space(height: 10,),
            const Text('if Group show group name'),
            const Space(height: 10,),
            const Text('Date Selection'),
            const Space(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Category Selection '),
                Text('Description'),
              ],
            ),
            const Space(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Currency Selection'),
                Text('Amount'),
              ],
            ),
            const Space(height: 10,),
            const Text('if group [paid by] and [split between friends]'),
            const Space(height: 10,),
            const Text('Optional features like picture/notes'),
            const Space(height: 10,),
            const Text('Save Button'),
          ],
        ),
      )
    );
  }
}
