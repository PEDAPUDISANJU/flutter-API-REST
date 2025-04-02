import 'package:flutter/main.dart';
import 'package:rest_api_service.dart/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter rest API',
      home: const Home(),
    );
  }
}
