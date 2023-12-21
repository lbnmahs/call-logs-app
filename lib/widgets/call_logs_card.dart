import 'package:contacts_app/data/logs.dart';
import 'package:flutter/material.dart';

// Single Call Log Card Class
class CallLogCard extends StatelessWidget {
  const CallLogCard({super.key, required this.callLog});

  final CallLog callLog;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            // Getting the first letter of the Contact's name
            callLog.name.isNotEmpty ? callLog.name[0].toUpperCase() : ''
          ),
        ),
        title: Text(callLog.name),
        subtitle: Text(callLog.number),
        trailing: Text(callLog.time),
      ),
    );
  }
}
