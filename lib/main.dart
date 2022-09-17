import 'package:flutter/material.dart';
import 'dart:developer' as console show log;
import 'config/theme.dart';
import 'screens/wrapper.dart';

void main() {
  console.log('app started successfully!');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kidvanto Assignment',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const Wrapper(),
    );
  }
}
