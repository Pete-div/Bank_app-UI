import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import '../models/expenses.dart';
import '../custom/expanse_chart.dart';

class Header extends StatelessWidget {

  final VoidCallback addTransaction;
  Header(this.addTransaction);
  static List<chart.Series<Expenses, String>> _series = [
    chart.Series<Expenses, String>(
        id: 'Expenses',
        domainFn: (Expenses expenses, _) => expenses.category,
        measureFn: (Expenses expenses, _) => expenses.value,
        labelAccessorFn: (Expenses expenses, _) => '\$${expenses.value}',
        colorFn: (Expenses expenses, _) =>
            chart.ColorUtil.fromDartColor(expenses.color),
        data: [
          Expenses('Business', const Color(0xff406ad4), 149.99),
          Expenses('Meal', const Color(0xffe8505b), 143.67),
          Expenses('Gifts', const Color(0xffe91ca), 49.99),
          Expenses('Gaming', const Color(0xfff6a743), 27.99),
          Expenses('Entertainment', const Color(0xff57b552), 34.99),
        ])
  ];
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediaQuery = MediaQuery.of(context);
    return Container(
      width: double.infinity,
      height: mediaQuery.size.height * .4,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ExpensesChart(
                  _series,
                  animate: true,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: addTransaction,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: Container(
                      width: 124,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.playlist_add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          const Text(
                            'Add Transaction',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: Container(
                      width: 77,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Report',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Transaction',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
