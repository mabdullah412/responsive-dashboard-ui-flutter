import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CourseScores extends StatelessWidget {
  const CourseScores({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

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
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    centerSpaceRadius: 50,
                    startDegreeOffset: -90,
                    sections: pieChartSectionData,
                  ),
                ),
                Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '90%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding),

          // ! flutter
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: size <= 910 && size >= 850 ? 5 : 20,
              ),
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: const Text('Flutter'),
              subtitle: const Text(
                '200 / 220',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              trailing: const Text(
                '90 %',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),

          // ! english
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: size <= 910 && size >= 850 ? 5 : 20,
              ),
              leading: const CircleAvatar(
                backgroundColor: Colors.red,
                // radius: 10,
              ),
              title: const Text('English'),
              subtitle: const Text(
                '180 / 220',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              trailing: const Text(
                '81 %',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),

          // ! ds
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: size <= 910 && size >= 850 ? 5 : 20,
              ),
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                // radius: 10,
              ),
              title: const Text('Data Science'),
              subtitle: const Text(
                '210 / 220',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              trailing: const Text(
                '95 %',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),

          // ! js
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: size <= 910 && size >= 850 ? 5 : 20,
              ),
              leading: const CircleAvatar(
                backgroundColor: Colors.yellow,
                // radius: 10,
              ),
              title: const Text('JavaScript'),
              subtitle: const Text(
                '190 / 220',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              trailing: const Text(
                '86 %',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
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
