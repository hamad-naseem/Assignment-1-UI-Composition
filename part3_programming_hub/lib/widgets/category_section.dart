import 'package:flutter/material.dart';
import 'course_card.dart';

class CategorySection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> courses;

  const CategorySection({
    super.key,
    required this.title,
    required this.courses,
  });

  @override
  Widget build(BuildContext context) {
    final showCourses = courses.length > 4 ? courses.sublist(0, 4) : courses;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 160,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: showCourses.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final course = showCourses[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.42, // dynamic width (~2 cards on screen)
                  child: CourseCard(
                    title: course['title'] ?? '',
                    tag: course['tag'],
                    image: course['image'],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
