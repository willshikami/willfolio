import 'package:flutter/material.dart';

import 'package:universal_html/js.dart' as js;
import 'package:willfolio/client/widgets/logo.dart';
import 'package:willfolio/constants/app_colors.dart';
import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/routes/routes.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 48,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Nav links
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.home,
                  ),
                  child: Text(
                    'Projects/About',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Theme.of(context).shadowColor),
                  ),
                ),
              ),
              smallHorizontalSpacing,
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
          const Logo(),
          // Links
          Row(
            children: <Widget>[
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    js.context.callMethod(
                      'open',
                      ['https://dribbble.com/willshikami'],
                    );
                  },
                  child: Text(
                    'Dribbble',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: AppColors.dribbleTextColor),
                  ),
                ),
              ),
              smallHorizontalSpacing,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
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
                        .headline5
                        ?.copyWith(color: AppColors.linkedinTextColor),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
