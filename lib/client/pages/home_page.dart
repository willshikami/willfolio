import 'package:flutter/material.dart';

import 'package:willfolio/client/widgets/navbar.dart';
import 'package:willfolio/client/widgets/masthead.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavigationBar(),
              MastHead(),
            ],
          ),
        ),
      ),
    );
  }
}
