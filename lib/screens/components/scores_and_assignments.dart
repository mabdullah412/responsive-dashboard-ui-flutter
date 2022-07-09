import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ScoresAndAssignments extends StatelessWidget {
  const ScoresAndAssignments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Scores', style: TextStyle(fontSize: 18)),
          const SizedBox(height: defaultPadding),
          SizedBox(
            height: 200,
            child: PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 50,
                startDegreeOffset: -90,
                sections: pieChartSectionData,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          // ! Hint
          Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(width: defaultPadding),
                  Text('Flutter & Dart'),
                ],
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.yellow,
                  ),
                  SizedBox(width: defaultPadding),
                  Text('JavaScript'),
                ],
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(width: defaultPadding),
                  Text('Data Science'),
                ],
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(width: defaultPadding),
                  Text('English'),
                ],
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          const Text(
            'Assignments',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionData = [
  PieChartSectionData(
    color: secondaryColor,
    value: 25,
    title: 'English',
    radius: 20,
    showTitle: false,
  ),
  PieChartSectionData(
    color: Colors.blue,
    value: 45,
    title: 'Flutter',
    radius: 45,
    showTitle: false,
  ),
  PieChartSectionData(
    color: Colors.red,
    value: 30,
    title: 'English',
    radius: 30,
    showTitle: false,
  ),
  PieChartSectionData(
    color: Colors.green,
    value: 35,
    title: 'DS',
    radius: 35,
    showTitle: false,
  ),
  PieChartSectionData(
    color: Colors.yellow,
    value: 45,
    title: 'JS',
    radius: 45,
    showTitle: false,
  ),
];
