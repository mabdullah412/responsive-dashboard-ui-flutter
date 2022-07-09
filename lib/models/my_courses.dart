import 'package:flutter/material.dart';

class CourseInfo {
  final String? course, instructor, time, status;
  final Color? color;

  CourseInfo({
    this.course,
    this.instructor,
    this.time,
    this.status,
    this.color,
  });
}

List myCourses = <CourseInfo>[
  CourseInfo(
    course: 'JavaScript',
    instructor: 'John Cena',
    time: '2:00 PM',
    status: 'Missed',
    color: Colors.yellow,
  ),
  CourseInfo(
    course: 'Flutter & Dart',
    instructor: 'Mohsin Zia',
    time: '4:00 PM',
    status: 'Missed',
    color: Colors.blue,
  ),
  CourseInfo(
    course: 'Data Science',
    instructor: 'Tommy Shelby',
    time: '6:00 PM',
    status: 'Ongoing',
    color: Colors.green,
  ),
  CourseInfo(
    course: 'English',
    instructor: 'Ali',
    time: '8:00 PM',
    status: 'Upcoming',
    color: Colors.red,
  ),
];
