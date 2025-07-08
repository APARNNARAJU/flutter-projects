import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final int selectedIndex;
  const CustomDrawer({super.key, required this.selectedIndex});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isEnrolledExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFFF9FAFB),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            _buildMenuItem(
              icon: Icons.home,
              label: "Home",
              selected: widget.selectedIndex == 0,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _buildMenuItem(
              icon: Icons.calendar_today_outlined,
              label: "Calendar",
              selected: widget.selectedIndex == 1,
              onTap: () {},
            ),
            ExpansionTile(
              initiallyExpanded: isEnrolledExpanded,
              leading: const Icon(Icons.school_outlined),
              title: const Text("Enrolled"),
              trailing: const Icon(Icons.keyboard_arrow_down),
              childrenPadding: const EdgeInsets.only(left: 20),
              children: const [
                ListTile(
                  title: Text("AI & CV"),
                  leading: Icon(Icons.arrow_right),
                ),
                ListTile(
                  title: Text("Mobile Dev"),
                  leading: Icon(Icons.arrow_right),
                ),
                ListTile(
                  title: Text("Python DS"),leading: Icon(Icons.arrow_right),
                )
              ],
              onExpansionChanged: (expanded) {
                setState(() {
                  isEnrolledExpanded = expanded;
                });
              },
            ),
            _buildMenuItem(
              icon: Icons.archive_outlined,
              label: "Archived classes",
              selected: widget.selectedIndex == 2,
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.settings_outlined,
              label: "Settings",
              selected: widget.selectedIndex == 3,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: selected ? Colors.white : Colors.black87),
      title: Text(label,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black87,
              fontWeight: FontWeight.w500)),
      tileColor: selected ? Colors.blue[300] : null,
      shape: selected
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          : null,
      onTap: onTap,
    );
  }
}
