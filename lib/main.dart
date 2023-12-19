import 'package:contacts_app/call_logs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ContactsApp());
}
final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.cyan,
    brightness: Brightness.dark
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.poppinsTextTheme()
);

class ContactsApp extends StatelessWidget {
  const ContactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: theme,
      home: const CallLogsList(),
    );
  }
}

