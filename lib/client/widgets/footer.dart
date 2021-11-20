import 'package:flutter/material.dart';
import 'package:willfolio/constants/app_colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '© Willard Shikami 2021',
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: AppColors.midGreyColor,
            ),
      ),
    );
  }
}
