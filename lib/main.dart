import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic_with_kuldii/cuppertino.dart';
import 'package:flutter_basic_with_kuldii/date_picker.dart';
import 'package:flutter_basic_with_kuldii/media_query.dart';

void main() {
  // Materi Media Query
  // setting rotate only mode potrait
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatePickers(),
      // Switch tema
      // theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      // home: Switchs(
      //   onThemeChanged: (value) {
      //     setState(() {
      //       isDarkTheme = value;
      //     });
      //   },
      // ),
    );
  }
}
