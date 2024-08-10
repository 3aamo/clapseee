import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/home/home.dart';

class Rweek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    var _size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/icons/expand_Lmore.png',
                    height: 28,
                    width: 28,
                  ),
                  Center(
                      child: Text(
                    'April 13 - April 19',
                    style: themeData.textTheme.bodyLarge,
                  )),
                  Image.asset(
                    'assets/images/icons/expand_Rmore.png',
                    height: 28,
                    width: 28,
                  ),
                ],
              ),
              Container(
                width: 450,
                height: 200,
                child: BarChart(
                  BarChartData(
                    barTouchData: barTouchData,
                    alignment: BarChartAlignment.spaceAround,
                    gridData: gridData,
                    titlesData: titlesData,
                    borderData: borderData,
                    minY: 0,
                    maxY: 3,
                    barGroups: barGroups,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black45,
          thickness: 3,
        ),
      ],
    );
  }
}
