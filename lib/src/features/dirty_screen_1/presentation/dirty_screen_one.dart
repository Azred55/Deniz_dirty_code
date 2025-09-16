import 'package:flutter/material.dart';

class BugBox extends StatelessWidget {
  final String label;

  const BugBox({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.redAccent,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.bug_report, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DirtyScreenOne extends StatelessWidget {
  const DirtyScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cleaned Screen #1")),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            BugBox(label: "Box #1"),
            BugBox(label: "Box #2"),
            BugBox(label: "Box #3"),
            BugBox(label: "Box #4"),
          ],
        ),
      ),
    );
  }
}
