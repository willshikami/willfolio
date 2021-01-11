import 'package:flutter/material.dart';

class ScrollDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Scroll down to see my work!',
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                color: Theme.of(context).accentColor,
              ),
        ),
      ),
    );
  }
}
