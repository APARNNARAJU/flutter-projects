import 'package:flutter/material.dart';

class Gmenu extends StatelessWidget {
  const Gmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          _buildClassCard(
            title: "AI & Computer Vision",
            teacher: "Prof. John Doe",
            section: "Section A",
            color: Colors.teal,
          ),
          const SizedBox(height: 16),
          _buildClassCard(
            title: "Mobile App Development",
            teacher: "Ms. Aparnna Raju",
            section: "Section B",
            color: Colors.deepPurple,
          ),
          const SizedBox(height: 16),
          _buildClassCard(
            title: "Python for Data Science",
            teacher: "Dr. Smith",
            section: "Section C",
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }

  Widget _buildClassCard({
    required String title,
    required String teacher,
    required String section,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              teacher,
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: const Icon(Icons.more_vert, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 12),
            child: Text(
              section,
              style: const TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
