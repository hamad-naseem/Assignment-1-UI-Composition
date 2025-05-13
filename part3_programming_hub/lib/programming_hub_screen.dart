import 'package:flutter/material.dart';
import 'widgets/category_section.dart';
import 'widgets/bottom_nav_bar.dart';

class ProgrammingHubScreen extends StatelessWidget {
  const ProgrammingHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20), // Added padding for spacing below last item
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Courses',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const CategorySection(
                title: "TOP TRENDING",
                courses: [
                  {"title": "Python", "tag": "TRENDING"},
                  {"title": "C++", "tag": "TRENDING"},
                  {"title": "Java"},
                  {"title": "Ethical Hacking"},
                ],
              ),
              const CategorySection(
                title: "FREE COURSES",
                courses: [
                  {"title": "Fundamentals"},
                  {"title": "IT Basics"},
                  {"title": "HTML", "tag": "TRENDING"},
                  {"title": "Artificial Intelligen..", "tag": "TRENDING"},
                ],
              ),
              const CategorySection(
                title: "NEW COURSES",
                courses: [
                  {"title": "DevOps", "tag": "NEW"},
                  {"title": "Bulma CSS", "tag": "NEW"},
                  {"title": "React Native", "tag": "NEW"},
                  {"title": "Computer Vision u", "tag": "NEW"},
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [Color(0xFF63B3ED), Color(0xFF4299E1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Importance of\nCertificate",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                Icon(Icons.play_circle, color: Colors.white),
              ],
            ),
          ),
          Image.asset("assets/header_illustration.jpg", height: 100),
        ],
      ),
    );
  }
}
