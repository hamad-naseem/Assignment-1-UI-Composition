import 'package:flutter/material.dart';
import '../widgets/note_card.dart';
import '../widgets/checklist_card.dart';

class KeepScreen extends StatelessWidget {
  const KeepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notes = [
      NoteCardData(
        color: Colors.amber[200]!,
        title: 'Workout Plan',
        content: 'Monday: Chest\nTuesday: Back\nWednesday: Legs\nThursday: Shoulders\nFriday: Arms',
      ),
      ChecklistCardData(
        title: 'Packing List',
        items: [
          'Passport',
          'Boarding Pass',
          'Phone Charger',
          'Toothbrush',
          'Headphones',
          'Travel Pillow',
          'Sneakers',
        ],
        color: Colors.lightBlue[100]!,
        tag: 'Vacation',
        hasFooterIcons: false,
      ),
      ChecklistCardData(
        title: 'Shopping List',
        items: [
          'Milk',
          'Bread',
          'Eggs',
          'Cheese',
          'Bananas',
          'Tomatoes',
        ],
        color: Colors.green[200]!,
        tag: 'Groceries',
        hasFooterIcons: true,
      ),
      NoteCardData(
        color: Colors.pink[100]!,
        title: 'Startup Ideas',
        content: '1. Pet tracker app\n2. AI study buddy\n3. Local plant exchange\n4. Digital habit journal',
      ),
      NoteCardData(
        color: Colors.deepPurple[100]!,
        title: 'Reading List',
        content: '• Atomic Habits\n• The Alchemist\n• Zero to One\n• Flutter in Action',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search your notes'),
        leading: const Icon(Icons.menu),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.jpg'), 
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: notes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final note = notes[index];
            if (note is NoteCardData) {
              return NoteCard(data: note);
            } else if (note is ChecklistCardData) {
              return ChecklistCard(data: note);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Colors.deepOrange),
      ),
    );
  }
}
