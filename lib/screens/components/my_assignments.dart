import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/constants.dart';

class MyAssignments extends StatelessWidget {
  const MyAssignments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Assignments',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: defaultPadding),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding,
          ),
          child: Column(
            children: const [
              AssignmentTile(
                title: 'Flutter web app',
                status: 'Completed',
                dueDate: 'Today, 10:30 AM',
                progress: 1,
              ),
              SizedBox(height: defaultPadding * 1.5),
              AssignmentTile(
                title: 'JavaScript DOM',
                status: 'Pending',
                dueDate: 'Today, 12:00 PM',
                progress: 0.85,
              ),
              SizedBox(height: defaultPadding * 1.5),
              AssignmentTile(
                title: 'English Literature',
                status: 'Completed',
                dueDate: 'Tomorrow, 2:00 PM',
                progress: 1,
              ),
              SizedBox(height: defaultPadding * 1.5),
              AssignmentTile(
                title: 'Dart Loops',
                status: 'Pending',
                dueDate: 'Wednesday, 12:00 PM',
                progress: 0.3,
              ),
              SizedBox(height: defaultPadding * 1.5),
              AssignmentTile(
                title: 'Data Science',
                status: 'Pending',
                dueDate: 'Thursday, 12:00 PM',
                progress: 0.4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AssignmentTile extends StatelessWidget {
  const AssignmentTile({
    Key? key,
    required this.title,
    required this.dueDate,
    required this.progress,
    required this.status,
  }) : super(key: key);

  final String title;
  final String dueDate;
  final double progress;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // * progress indicator
        Row(
          children: [
            Stack(
              children: [
                CircularProgressIndicator(
                  value: progress,
                  color: Colors.white,
                  backgroundColor: Colors.grey[800],
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${progress * 100}%',
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(width: defaultPadding),

            // * title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  dueDate,
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),

        // * course status
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
          decoration: BoxDecoration(
            color: status == 'Completed' ? Colors.green[100] : Colors.red[100],
            borderRadius: const BorderRadius.all(Radius.circular(3)),
          ),
          child: Text(
            status,
            style: TextStyle(
              color:
                  status == 'Completed' ? Colors.green[900] : Colors.red[700],
            ),
          ),
        ),
      ],
    );
  }
}
