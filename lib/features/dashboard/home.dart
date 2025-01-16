import 'package:flutter/material.dart';
import 'package:trip_manager/core/components/space.dart';

import '../../core/ colors/core_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List dashboardItem = [
      {
        'title': 'Add Expense',
        'icon': Icons.add,
        'subTitle': null,
        'type': 'ADD_EXPENSE'
      },
      {
        'title': 'Create Group',
        'icon': Icons.group_add,
        'subTitle': null,
        'type': 'CREATE_GROUP'
      },
      {
        'title': 'My Expenses',
        'icon': Icons.auto_graph,
        'subTitle': null,
        'type': 'MY_EXPENSES'
      },
      {
        'title': 'Total Expenses',
        'icon': null,
        'subTitle': 'Rs 5674.00',
        'type': 'TOTAL_EXPENSES'
      },
      {
        'title': 'Last Month Expenses',
        'icon': null,
        'subTitle': 'Rs 15674.00',
        'type': 'LAST_EXPENSES'
      },
      {
        'title': 'Monthly Fixed Expenses',
        'icon': null,
        'subTitle': 'Rs 27000.00',
        'type': 'LAST_EXPENSES'
      },
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: 240,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: dashboardItem.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        height: 20,
                        color: primaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            dashboardItem[index]['subTitle'] != null
                                ? Text(
                                    dashboardItem[index]['subTitle'],
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Icon(dashboardItem[index]['icon']),
                            Text(
                              dashboardItem[index]['title'],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Space(
                height: 10,
              ),
              const Text(
                'Balance : Rs 5673',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
