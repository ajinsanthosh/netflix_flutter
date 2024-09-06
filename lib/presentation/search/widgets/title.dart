
import 'package:flutter/material.dart';

class SearchtextTitle extends StatelessWidget {

  final String title;

  const SearchtextTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(title,
        style: TextStyle(
          fontSize: 25, 
          fontWeight: FontWeight.bold
          ),
          );
  }
}