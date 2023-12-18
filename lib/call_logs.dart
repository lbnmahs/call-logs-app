import 'package:flutter/material.dart';

class CallLogsList extends StatefulWidget {
  const CallLogsList({super.key});

  @override
  State<CallLogsList> createState() {
    return _CallLogsList();
  }
}

class _CallLogsList extends State<CallLogsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Aligns the title at the center
        title: const Text("Call Logs"),
      ),
    );
  }
}
