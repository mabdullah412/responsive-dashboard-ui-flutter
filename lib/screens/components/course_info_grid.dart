import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/my_courses.dart';

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
        return CourseInfoTile(course: course);
      },
    );
  }
}

class CourseInfoTile extends StatelessWidget {
  const CourseInfoTile({Key? key, required this.course}) : super(key: key);

  final CourseInfo course;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

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
            ],
          ),
        ],
      ),
    );
  }
}
