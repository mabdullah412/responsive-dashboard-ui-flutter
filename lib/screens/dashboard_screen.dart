import 'package:flutter/material.dart';

import '../constants.dart';
import '../responsive.dart';
import 'components/courses_info.dart';
import 'components/header.dart';
import 'components/scores_and_assignments.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),

            // ! upcoming classes
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CoursesInfo(),
                      const SizedBox(height: defaultPadding),
                      const Text(
                        'Below Courses Info',
                        style: TextStyle(fontSize: 18),
                      ),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        const ScoresAndAssignments(),
                    ],
                  ),
                ),

                // ! spacing
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),

                // ! right panel
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: ScoresAndAssignments(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
