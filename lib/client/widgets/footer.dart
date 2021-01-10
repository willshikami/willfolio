import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '© Willard Shikami 2021',
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Theme.of(context).accentColor,
              ),
        ),
      ),
    );
  }
}
