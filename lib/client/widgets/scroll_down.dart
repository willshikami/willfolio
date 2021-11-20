import 'package:flutter/material.dart';
import 'package:willfolio/constants/app_colors.dart';

class ScrollDown extends StatelessWidget {
  const ScrollDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Scroll down to see my work!',
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: AppColors.accentColor,
            ),
      ),
    );
  }
}
