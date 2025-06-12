
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:t9s/check/server_check_ui.dart';
import 'package:t9s_client/t9s_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Category Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ServerCheckUi(),
    );
  }
}

