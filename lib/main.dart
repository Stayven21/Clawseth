import 'package:aquaseth/Repository/auth_repository.dart';
import 'package:aquaseth/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final authRepository = AuthRepository();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sample(
        fetchDataFromFirebase1: authRepository.fetchDataFromFirebase1,
        fetchDataFromFirebase2: authRepository.fetchDataFromFirebase2,
        fetchDataFromFirebase3: authRepository.fetchDataFromFirebase3,
      ),
    );
  }
}
