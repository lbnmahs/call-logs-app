import 'package:contacts_app/data/logs.dart';
import 'package:flutter/material.dart';

class CallLogCard extends StatelessWidget {
  const CallLogCard({super.key, required this.callLog});

  final CallLog callLog;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(callLog.name[0]),
      ),
      title: Text(callLog.name),
      subtitle: Text(callLog.number),
      trailing: Text(callLog.time),
    );
  }
}
