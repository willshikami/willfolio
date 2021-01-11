import 'package:flutter/material.dart';

import 'package:universal_html/js.dart' as js;
import 'package:willfolio/routes/routes.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Nav links
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, Routes.home),
                child: Text(
                  'PROJECTS/ABOUT',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Theme.of(context).shadowColor),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              // GestureDetector(
              //   child: Text(
              //     'ABOUT',
              //     style: Theme.of(context)
              //         .textTheme
              //         .bodyText1
              //         .copyWith(color: Theme.of(context).shadowColor),
              //   ),
              // ),
              // SizedBox(
              //   width: 18,
              // ),
              // GestureDetector(
              //   child: Text(
              //     'CONTACT',
              //     style: Theme.of(context)
              //         .textTheme
              //         .bodyText1
              //         .copyWith(color: Theme.of(context).shadowColor),
              //   ),
              // ),
            ],
          ),
          // Logo
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, Routes.home),
            child: Container(
              child: Text(
                'Willard Shikami',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          // Logos
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  js.context.callMethod(
                    'open',
                    ['https://dribbble.com/dahouseplant'],
                  );
                },
                child: Text(
                  'Dribbble',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Theme.of(context).highlightColor),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  js.context.callMethod(
                    'open',
                    ['https://www.linkedin.com/in/willardshikami/'],
                  );
                },
                child: Text(
                  'LinkedIn',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Theme.of(context).hoverColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
