import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:willfolio/constants/app_colors.dart';

class Footer extends StatelessWidget {
  Footer({Key? key}) : super(key: key);

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('yyyy');
  final String currentYear = formatter.format(now);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '© Willard Shikami $currentYear',
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: AppColors.midGreyColor,
            ),
      ),
    );
  }
}
