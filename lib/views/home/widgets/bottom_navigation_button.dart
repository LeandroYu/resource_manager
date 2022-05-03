import 'package:flutter/material.dart';

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      selectedIcon: Icon(icon),
      icon: Icon(icon, color: Colors.white),
      label: label,
    );
  }
}
