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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Upcoming Classes', style: TextStyle(fontSize: 18)),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(2)),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add, color: Colors.white),
                label: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
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
