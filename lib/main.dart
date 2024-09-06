import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        
        primaryColor: Colors.black,
        
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.transparent
        ),
        scaffoldBackgroundColor: const Color(0xFF000000),

        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),

        ),

        useMaterial3: true,
      ),
      home:  ScreenMainPage()
    );
  }
}
