import 'package:contacts_app/data/logs.dart';
import 'package:contacts_app/widgets/call_logs_card.dart';
import 'package:flutter/material.dart';

class CallLogsList extends StatefulWidget {
  const CallLogsList({super.key});

  @override
  State<CallLogsList> createState() {
    return _CallLogsList();
  }
}

class _CallLogsList extends State<CallLogsList> {
  List<CallLog> calls = availableCallLogs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Aligns the title at the center
        title: const Text("Call Logs"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Dismissible(
            key: ValueKey(calls[index]), 
            child: CallLogCard(callLog: calls[index],)
          );
        }
      )
    );
  }
}
