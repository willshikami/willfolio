import 'package:flutter/material.dart';

import 'package:willfolio/constants/strings.dart';
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
          horizontal: isLargeScreen ? 24 : 16,
          vertical: 52,
        ),
        child: Text(
          mastHeadText,
          style: isLargeScreen
              ? Theme.of(context).textTheme.headline1.copyWith(
                    color: Theme.of(context).shadowColor,
                  )
              : Theme.of(context).textTheme.headline2.copyWith(
                    color: Theme.of(context).shadowColor,
                  ),
        ),
      ),
    );
  }
}
