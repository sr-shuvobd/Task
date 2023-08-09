import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SummeryCard extends StatelessWidget {
  const SummeryCard({
    super.key,
    required this.number,
    required this.title,
  });

  final int number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "$number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}