import 'package:clubhouse/ui/home/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
        primaryColor: Color(0xFF5d5fee),
        scaffoldBackgroundColor: Color(0xFFf8f7fd),
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF010105),
          ),
        ),
        textTheme: TextTheme(
          headline4: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade900,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color(0xFF5d5fee),
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        primaryColor: Color(0xFF5d5fee),
        scaffoldBackgroundColor: Color(0xFF0a0a0a),
        backgroundColor: Color(0xFF29292b),
        appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.dark,
          backgroundColor: Colors.transparent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          headline4: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 16,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color(0xFF5d5fee),
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    );
  }
}
