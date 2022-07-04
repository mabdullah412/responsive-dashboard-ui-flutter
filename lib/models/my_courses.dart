class CourseInfo {
  final String? course, instructor, time, status, svgsrc;

  CourseInfo({
    this.course,
    this.instructor,
    this.time,
    this.status,
    this.svgsrc,
  });
}

List myCourses = <CourseInfo>[
  CourseInfo(
    course: 'JavaScript',
    instructor: 'John Cena',
    time: '2:00 PM',
    status: 'Missed',
    svgsrc: '',
  ),
  CourseInfo(
    course: 'Flutter & Dart',
    instructor: 'Mohsin Zia',
    time: '4:00 PM',
    status: 'Missed',
    svgsrc: '',
  ),
  CourseInfo(
    course: 'Data Science',
    instructor: 'Tommy Shelby',
    time: '6:00 PM',
    status: 'Ongoing',
    svgsrc: '',
  ),
  CourseInfo(
    course: 'English',
    instructor: 'Ali',
    time: '8:00 PM',
    status: 'Upcoming',
    svgsrc: '',
  ),
];
