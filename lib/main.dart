import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'controllers/menu_controller.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(fontFamily: 'Poppins', bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (contenxt) => MenuController(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
