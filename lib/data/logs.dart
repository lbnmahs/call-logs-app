import 'package:flutter/material.dart';

class CallLog {
  const CallLog({required this.name, required this.icon, required this.time});

  final String name;
  final Icon icon;
  final String time;

}

const availableCallLogs = [
  CallLog(
    icon: Icon(Icons.call_made_rounded, color: Colors.green,), 
    name: 'Elliott',
    time: "10:30 PM"
  ),
  CallLog(
    icon: Icon(Icons.call_missed_rounded, color: Colors.red), 
    name: 'Marilyn Monroe',
    time: "10:23 PM"
  ),
  CallLog(
    icon: Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'James Harden',
    time: "10:15 PM"
  ),
  CallLog(
    icon: Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'Joseph Dary',
    time: "9:30 PM"
  ),
  CallLog(
    icon: Icon(Icons.call_made_rounded, color: Colors.green), 
    name: 'Don Polo Julio',
    time: "9:07 PM"
  ),
  CallLog(
    icon: Icon(Icons.call_made_rounded, color: Colors.green), 
    name: 'Kim Jay',
    time: "6:44 PM"
  ),
  CallLog(
    icon: Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'Sabrina Markov',
    time: "3:25 PM"
  ),
  CallLog(
    icon: Icon(Icons.call_made_rounded, color: Colors.green), 
    name: 'Lou Phelps',
    time: "9:07 AM"
  ),
  CallLog(
    icon: Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'Naira Marley',
    time: "6:49 AM"
  ),
];

