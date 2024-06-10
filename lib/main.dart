import 'package:flutter/material.dart';
 import 'package:ufs_task/nav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UFS Task',
        theme: ThemeData(
          fontFamily: 'Plus Jakarta Sans',
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff1863D3)),
          useMaterial3: true,
        ),
        home: const MainScreen());
  }
}
