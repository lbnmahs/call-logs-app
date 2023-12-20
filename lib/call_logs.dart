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
        itemCount: availableCallLogs.length,
        itemBuilder: (ctx, index) {
          return Dismissible(
            key: ValueKey(calls[index]), 
            background: Container(
              color: Theme.of(context).colorScheme.errorContainer,
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            
            child: CallLogCard(callLog: calls[index],),
            onDismissed: (direction) {
              setState(() {
                calls.removeAt(index);
              });
            },
          );
        }
      )
    );
  }
}
