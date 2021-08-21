import 'package:flutter/material.dart';

import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/constants/responsiveness.dart';
import 'package:willfolio/client/widgets/custom_container.dart';

class MastHead extends StatelessWidget {
  const MastHead({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = ResponsiveWidget.isLargeScreen(context);
    return CustomContainer(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: isLargeScreen ? 24 : 8,
          vertical: 42,
        ),
        child: Column(
          children: [
            Text(
              mastHeadText,
              style: isLargeScreen
                  ? Theme.of(context).textTheme.headline1.copyWith(
                        color: Theme.of(context).shadowColor,
                      )
                  : Theme.of(context).textTheme.headline2.copyWith(
                        color: Theme.of(context).shadowColor,
                      ),
            ),
            Text(
              mastHeadSubText,
              style: isLargeScreen
                  ? Theme.of(context).textTheme.headline1.copyWith(
                        color: Theme.of(context).shadowColor,
                      )
                  : Theme.of(context).textTheme.headline2.copyWith(
                        color: Theme.of(context).shadowColor,
                      ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              mastHeadBodyText,
              style: isLargeScreen
                  ? Theme.of(context).textTheme.headline3.copyWith(
                        color: Theme.of(context).shadowColor,
                      )
                  : Theme.of(context).textTheme.headline2.copyWith(
                        color: Theme.of(context).shadowColor,
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
