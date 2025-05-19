import 'package:flutter/material.dart';

Widget menuItemWidget({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
  Color? color,
}) {
  return ListTile(
    leading: Icon(icon, color: color ?? Colors.black87),
    title: Text(
      title,
      style: TextStyle(fontSize: 16, color: color ?? Colors.black87),
    ),
    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    onTap: onTap,
  );
}
