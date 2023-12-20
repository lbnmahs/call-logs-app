import 'package:contacts_app/data/logs.dart';
import 'package:flutter/material.dart';

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
            callLog.name.isNotEmpty ? callLog.name[0] : ''
          ),
        ),
        title: Text(callLog.name),
        subtitle: Text(callLog.number),
        trailing: Text(callLog.time),
      ),
    );
  }
}
