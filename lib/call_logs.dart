import 'package:contacts_app/data/logs.dart';
import 'package:contacts_app/widgets/call_logs_card.dart';
import 'package:flutter/material.dart';

// Make sure it is a stateful widget
class CallLogsList extends StatefulWidget {
  const CallLogsList({super.key});

  @override
  State<CallLogsList> createState() {
    return _CallLogsList();
  }
}

class _CallLogsList extends State<CallLogsList> {
  final List<CallLog> _calls = availableCallLogs;

  // Function to delete a call log at a specific index
  void _deleteExpense (CallLog call) {
    final callIndex = availableCallLogs.indexOf(call);

    setState(() {
      availableCallLogs.remove(call);
    });

    // Bottom Snackbar
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Call Log Deleted'),
        action: SnackBarAction(
          label: 'Undo', 
          onPressed: () {
            setState(() {
              availableCallLogs.insert(callIndex, call);
            });
          }
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Call Logs"),
      ),
      // Body of the Stateful Class
      body: ListView.builder(
        itemCount: availableCallLogs.length,
        itemBuilder: (ctx, index) {
          return Dismissible(
            // Identifier for the widget
            key: ValueKey(_calls[index]),  

            // Background container with the red background
            background: Container(
              color: Theme.of(context).colorScheme.errorContainer,
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.white, fontSize: 15,
                  ),
                ),
              ),
            ),
            
            child: CallLogCard(callLog: _calls[index],),

            // Function to dictate the behavior after dismissing the child
            onDismissed: (direction) {
              _deleteExpense(_calls[index]);
            },
          );
        }
      )
    );
  }
}
