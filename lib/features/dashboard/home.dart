import 'package:flutter/material.dart';
import 'package:trip_manager/core/components/space.dart';
import '../../core/ colors/core_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget recentItem(IconData icon, String title, String amount) {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 60,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(
                      icon,
                      color: primaryColor,
                    ),
                  ),
                  const Space(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  amount,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget spendWidget(String title, String subTitle) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: const Color(0xff3CBD7D),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Space(
                    height: 70,
                  ),
                  const Text(
                    'THIS MONTHS SPEND',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  const Text(
                    'Rs 4553.20',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  const Space(
                    height: 10,
                  ),
                  const Text(
                    'BALANCE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.white),
                  ),
                  const Text(
                    'Rs 400.20',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  const Space(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      spendWidget('Last Month', 'RS 45546.00'),
                      spendWidget('Monthly Fixed', 'RS 3000.00')
                    ],
                  )
                ],
              ),
            ),
            const Space(
              height: 10,
            ),
            Expanded(
              child: SizedBox(
                  child: Column(
                children: [
                  const Space(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'RECENT TRANSACTIONS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 7,
                        itemBuilder: (BuildContext context, index) {
                          return recentItem(
                              Icons.oil_barrel, 'Petrol', '-1000');
                        }),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
