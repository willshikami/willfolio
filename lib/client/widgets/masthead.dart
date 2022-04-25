import 'package:flutter/material.dart';
import 'package:willfolio/constants/app_colors.dart';

import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/constants/responsiveness.dart';
import 'package:willfolio/client/widgets/custom_container.dart';

class MastHead extends StatelessWidget {
  const MastHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = ResponsiveWidget.isLargeScreen(context);
    final isMobileScreen = ResponsiveWidget.isMobileScreen(context);
    return CustomContainer(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          horizontal: isLargeScreen
              ? 124
              : isMobileScreen
                  ? 8
                  : 24,
          vertical: 56,
        ),
        child: Column(
          children: [
            veryLargeVerticalSpacing,
            Text(
              mastHeadText,
              textAlign: TextAlign.center,
              style: isLargeScreen
                  ? Theme.of(context).textTheme.headline1?.copyWith(
                        color: Theme.of(context).shadowColor,
                        height: 1.2,
                      )
                  : Theme.of(context).textTheme.headline2?.copyWith(
                        height: 1.2,
                        color: Theme.of(context).shadowColor,
                      ),
            ),
            Text(
              mastHeadSubText,
              textAlign: TextAlign.center,
              style: isLargeScreen
                  ? Theme.of(context).textTheme.headline1?.copyWith(
                        height: 1.2,
                        color: Theme.of(context).shadowColor,
                      )
                  : Theme.of(context).textTheme.headline2?.copyWith(
                        height: 1.2,
                        color: Theme.of(context).shadowColor,
                      ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              mastHeadBodyText,
              textAlign: TextAlign.center,
              style: isLargeScreen
                  ? Theme.of(context).textTheme.headline3?.copyWith(
                        height: 1.5,
                        color: AppColors.secondaryTextColor,
                      )
                  : Theme.of(context).textTheme.headline5?.copyWith(
                        height: 1.5,
                        color: AppColors.secondaryTextColor,
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
