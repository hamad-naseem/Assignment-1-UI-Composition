import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String? tag;
  final String? image;

  const CourseCard({
    super.key,
    required this.title,
    this.tag,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth, // use full available width
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 6)],
          ),
          child: Stack(
            children: [
              // Image or fallback icon
              Align(
                alignment: Alignment.bottomRight,
                child: image != null
                    ? Image.asset(
                        'assets/$image',
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                      )
                    : Icon(Icons.image, size: 40, color: Colors.grey.shade400),
              ),

              // Title
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              // Tag
              if (tag != null)
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: tag == "TRENDING" ? Colors.amber : Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      tag!,
                      style: const TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
