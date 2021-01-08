import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 48,
      ),
      child: Row(
        children: [
          GestureDetector(
            child: Text(
              'PROJECTS',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Theme.of(context).shadowColor),
            ),
          ),
          SizedBox(
            width: 18,
          ),
          GestureDetector(
            child: Text(
              'ABOUT',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Theme.of(context).shadowColor),
            ),
          ),
          SizedBox(
            width: 18,
          ),
          GestureDetector(
            child: Text(
              'CONTACT',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Theme.of(context).shadowColor),
            ),
          ),
        ],
      ),
    );
  }
}
