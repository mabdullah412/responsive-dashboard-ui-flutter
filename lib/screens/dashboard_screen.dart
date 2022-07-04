import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/responsive.dart';

import '../constants.dart';
import 'components/header.dart';

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
                    children: const [
                      Text('Upcoming Classes'),
                      SizedBox(height: defaultPadding),
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
                      children: const [],
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
