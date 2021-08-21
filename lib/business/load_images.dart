import 'package:flutter/material.dart';
import 'package:willfolio/business/unsupported_storage.dart';

class LoadImages extends StatefulWidget {
  @override
  _LoadImagesState createState() => _LoadImagesState();
}

class _LoadImagesState extends State<LoadImages> {
  String get image => null;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: _getImage(context, image),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              height: MediaQuery.of(context).size.height / 1.25,
              width: MediaQuery.of(context).size.width / 1.25,
              child: snapshot.data,
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting)
            return Container(
              height: MediaQuery.of(context).size.height / 1.25,
              width: MediaQuery.of(context).size.width / 1.25,
              child: CircularProgressIndicator(),
            );

          return Container();
        },
      ),
    );
  }
}

Future<Widget> _getImage(BuildContext context, String image) async {
  Image m;
  await FireStorageService.loadImage(context, image).then((downloadUrl) {
    m = Image.network(
      downloadUrl.toString(),
      fit: BoxFit.scaleDown,
    );
  });
  return m;
}
