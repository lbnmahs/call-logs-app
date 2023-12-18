import 'package:flutter/material.dart';

void main() {
  runApp(const ContactsApp());
}
final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.cyan,
    brightness: Brightness.dark
  ),
  useMaterial3: true,
);

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: theme,
      home: const Text("Home"),
    );
  }
}

