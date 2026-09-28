import 'package:flutter/material.dart';
import 'package:reactive_counter_demo/services/counter_stream_service.dart';
import 'screens/home_screen.dart';

void main() {
  final CounterStreamService service = CounterStreamService();
  service.start();
  runApp(MyApp(service: service));
}

class MyApp extends StatelessWidget {
  final CounterStreamService service;
  const MyApp({super.key,
  required this.service});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(service),
    );
  }
}