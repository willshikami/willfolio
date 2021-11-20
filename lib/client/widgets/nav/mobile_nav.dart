import 'package:flutter/material.dart';
import 'package:willfolio/client/widgets/custom_container.dart';
import 'package:willfolio/client/widgets/logo.dart';

class MobileNavigation extends StatelessWidget {
  const MobileNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Logo(),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ],
      ),
    );
  }
}
