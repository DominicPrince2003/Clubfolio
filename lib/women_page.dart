import 'package:flutter/material.dart';

class Wpage extends StatelessWidget {
  const Wpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  leading: Icon(Icons.wallpaper),
                  title: Container(
                      color: Colors.blue, child: Text("Hidden AppBar")),
                  elevation: 10.0,
                  automaticallyImplyLeading: false,
                  expandedHeight: 50,
                  floating: true,
                  snap: true,
                )
              ];
            },
            // list of images for scrolling
            body: ListView(children: <Widget>[])));
  }
}
