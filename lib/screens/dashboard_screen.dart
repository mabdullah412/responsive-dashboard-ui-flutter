import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/my_courses.dart';
import '../responsive.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

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
                      const Text('Upcoming Classes'),
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
                  ),
                ),

                // ! spacing
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),

                // ! right panel
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: const [
                        Text('Right Panel'),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CourseInfoGridView extends StatelessWidget {
  const CourseInfoGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: myCourses.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        final CourseInfo course = myCourses[index];

        return Container(
          padding: const EdgeInsets.all(defaultPadding),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            color: Colors.white12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // * svg and buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundColor: secondaryColor,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),

              // * course name
              Text(
                course.course.toString(),
                style: TextStyle(
                  fontSize: size >= 850 && size <= 950 ? 13 : 14,
                ),
              ),

              // * time
              Text(
                course.time.toString(),
                style: TextStyle(
                  fontSize: size >= 850 && size <= 950 ? 11 : 14,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // * status
                  Text(
                    course.status.toString(),
                    style: TextStyle(
                      color: course.status == 'Ongoing'
                          ? Colors.green
                          : Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),

                  // * join button
                  // if (course.status == 'Ongoing')
                  //   ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       primary: secondaryColor,
                  //     ),
                  //     child: const Text(
                  //       'Join',
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
