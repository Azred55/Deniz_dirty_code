import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  final String label;

  const AlertBox({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.orangeAccent,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.warning, color: Colors.black),
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

class DirtyScreenThree extends StatelessWidget {
  const DirtyScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cleaned Screen #3")),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AlertBox(label: "Alert 1"),
            AlertBox(label: "Alert 2"),
            AlertBox(label: "Alert 3"),
            AlertBox(label: "Alert 4"),
          ],
        ),
      ),
    );
  }
}
