import 'package:flutter/material.dart';
import 'package:willfolio/routes/routes.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.home),
      child: Container(
        child: Text(
          'Willard Shikami',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
