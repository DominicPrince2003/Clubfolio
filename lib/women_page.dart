import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wpage extends StatefulWidget {
  const Wpage({Key? key}) : super(key: key);

  @override
  State<Wpage> createState() => _WpageState();
}

class _WpageState extends State<Wpage> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFFF7C97E), Color(0xffF07D53)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Color.fromRGBO(43, 0, 0, 1),
            expandedHeight: 240,
            collapsedHeight: 80,
            pinned: true,
            floating: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(8),
              centerTitle: true,
              title:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'Top companies led by Women 👑',
                  style: TextStyle(
                      fontFamily: 'Clash',
                      fontSize: 15,
                      foreground: Paint()..shader = linearGradient),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD48593)),
                        color: Color(0xff260E0E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Text(
                            "Tell your friend to check out top companies run by Women 👩🏽‍💻",
                            style: TextStyle(
                              fontFamily: 'Clash',
                              fontSize: 9,
                              color: Color(0xffF7C97E),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color(0x1Affffff),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.whatsapp,
                                    color: Color(0xffF7C97E),
                                    size: 18,
                                  ),
                                  Text(
                                    "share",
                                    style: TextStyle(
                                        fontFamily: 'Clash',
                                        fontSize: 12,
                                        color: Color(0xffF7C97E)),
                                  )
                                ],
                              ),
                            )),
                      )
                    ]),
                  ),
                ),
              ]),
              background: Hero(
                tag: 'women@2x.png',
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('images/women@2x.png'),
                ),
              ),
            ),
          ),
          /*SliverList(delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container();
          }))*/
        ]));
  }
}
