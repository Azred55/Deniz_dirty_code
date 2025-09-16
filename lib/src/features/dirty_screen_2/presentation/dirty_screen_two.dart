import 'package:flutter/material.dart';

class EcoBox extends StatelessWidget {
  final String label;

  const EcoBox({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.greenAccent,
      ),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.eco, color: Colors.white),
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

class DirtyScreenTwo extends StatelessWidget {
  const DirtyScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cleaned Screen #2")),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            EcoBox(label: "Box A"),
            EcoBox(label: "Box B"),
            EcoBox(label: "Box C"),
            EcoBox(label: "Box D"),
          ],
        ),
      ),
    );
  }
}
