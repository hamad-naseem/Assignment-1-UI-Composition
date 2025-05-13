import 'package:flutter/material.dart';

class NoteCardData {
  final String? title;
  final String content;
  final Color color;

  NoteCardData({
    this.title,
    required this.content,
    required this.color,
  });
}
class NoteCard extends StatelessWidget {
  final NoteCardData data;

  const NoteCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: data.color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView( // 👈 Wrap content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (data.title != null)
              Text(
                data.title!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 4),
            Text(
              data.content,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
