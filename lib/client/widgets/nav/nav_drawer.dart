import 'package:flutter/material.dart';
import 'package:willfolio/client/widgets/nav/drawer_item.dart';
import 'package:universal_html/js.dart' as js;
import 'package:willfolio/routes/routes.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          // About
          DrawerItem(
            Icons.help,
            callback: () => Navigator.pushNamed(
              context,
              Routes.home,
            ),
            color: Theme.of(context).shadowColor,
            title: 'Projects/About ',
          ),
          // Dribbble
          DrawerItem(
            Icons.videocam,
            callback: () {
              js.context.callMethod(
                'open',
                ['https://dribbble.com/dahouseplant'],
              );
            },
            color: Theme.of(context).highlightColor,
            title: 'Dribble',
          ),
          // LinkedIn
          DrawerItem(
            Icons.help,
            callback: () {
              js.context.callMethod(
                'open',
                ['https://www.linkedin.com/in/willardshikami/'],
              );
            },
            color: Theme.of(context).hoverColor,
            title: 'LinkedIn',
          ),
        ],
      ),
    );
  }
}
