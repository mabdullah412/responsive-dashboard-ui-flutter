import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'course_info_grid.dart';

class CoursesInfo extends StatelessWidget {
  const CoursesInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Upcoming Classes', style: TextStyle(fontSize: 18)),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: CourseInfoGridView(
            childAspectRatio: size < 650 && size > 480 ? 1.5 : 1,
            crossAxisCount: size < 650 ? 2 : 4,
          ),
          tablet: const CourseInfoGridView(
            crossAxisCount: 4,
          ),
          desktop: CourseInfoGridView(
            childAspectRatio: size > 1250 ? 1.2 : 1,
            // crossAxisCount: size < 1250 ? 2 : 4,
          ),
        ),
      ],
    );
  }
}
