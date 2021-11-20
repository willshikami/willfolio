import 'package:flutter/material.dart';
import 'package:willfolio/routes/routes.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.home),
      child: Text(
        'll',
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
