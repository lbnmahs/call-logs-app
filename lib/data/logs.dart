import 'package:flutter/material.dart';

class CallLog {
  CallLog({
    required this.name, 
    required this.icon, 
    required this.time, 
    required this.number
  });

  final String name;
  final Icon icon;
  final String time;
  final String number;

}

final List<CallLog> availableCallLogs = [
  CallLog(
    icon: const Icon(Icons.call_made_rounded, color: Colors.green,), 
    name: 'Elliott',
    time: "10:30 PM",
    number: "+254769569696"
  ),
  CallLog(
    icon: const Icon(Icons.call_missed_rounded, color: Colors.red), 
    name: 'Marilyn Monroe',
    time: "10:23 PM",
    number: "+254769569696"
  ),
  CallLog(
    icon: const Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'James Harden',
    time: "10:15 PM",
    number: "+254769569696"
  ),
  CallLog(
    icon: const Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'Joseph Dary',
    time: "9:30 PM",
    number: "+254769569696"
  ),
  CallLog(
    icon: const Icon(Icons.call_made_rounded, color: Colors.green), 
    name: 'Don Polo Julio',
    time: "9:07 PM",
    number: "+254769569696"
  ),
  CallLog(
    icon: const Icon(Icons.call_made_rounded, color: Colors.green), 
    name: 'Kim Jay',
    time: "6:44 PM",
    number: "+254769569696",
  ),
  CallLog(
    icon: const Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'Sabrina Markov',
    time: "3:25 PM",
    number: "+254769569696"
  ),
  CallLog(
    icon: const Icon(Icons.call_made_rounded, color: Colors.green), 
    name: 'Lou Phelps',
    time: "9:07 AM",
    number: "+254769569696"
  ),
  CallLog(
    icon: const Icon(Icons.call_missed_outgoing_rounded, color: Colors.red), 
    name: 'Naira Marley',
    time: "6:49 AM",
    number: "+254769569696"
  ),
];

