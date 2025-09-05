import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final int code;
  final String title;
  final String category;

  const CustomListTile({
    required this.code,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$title, $code"),
      subtitle: Text(category),
    );
  }
}