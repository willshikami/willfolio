import 'package:flutter/material.dart';
import 'package:willfolio/client/widgets/footer.dart';

import 'package:willfolio/client/widgets/navbar.dart';
import 'package:willfolio/client/widgets/masthead.dart';
import 'package:willfolio/client/widgets/scroll_down.dart';
import 'package:willfolio/client/widgets/projects_section.dart';

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
              ScrollDown(),
              // Projects
              ProjectSection(),
              SizedBox(
                height: 64,
              ),
              Footer(),
              SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
