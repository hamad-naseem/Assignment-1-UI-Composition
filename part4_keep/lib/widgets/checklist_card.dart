import 'package:flutter/material.dart';

class ChecklistCardData {
  final String title;
  final List<String> items;
  final int tickedCount;
  final String? tag;
  final bool hasFooterIcons;
  final Color color; 

  ChecklistCardData({
    required this.title,
    required this.items,
    this.tickedCount = 0,
    this.tag,
    this.hasFooterIcons = false,
    required this.color, 
  });
}

class ChecklistCard extends StatelessWidget {
  final ChecklistCardData data;

  const ChecklistCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: data.color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          ...data.items.map(
            (item) => Row(
              children: [
                const Icon(Icons.check_box_outline_blank, size: 16),
                const SizedBox(width: 4),
                Expanded(child: Text(item)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
