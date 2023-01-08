import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardlist.dart';

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
    return WillPopScope(
      onWillPop: () async {
        Navigator.popUntil(context, ModalRoute.withName('/'));
        return false;
      },
      child: Scaffold(
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
              expandedTitleScale: 1,
              title: Container(
                alignment: Alignment.center,
                child: Text(
                  'Top companies led by Women 👑',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      fontFamily: 'Clash',
                      foreground: Paint()..shader = linearGradient),
                ),
              ),
              titlePadding: EdgeInsets.all(1),
              background: Stack(
                children: [
                  Hero(
                    tag: 'women',
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/women@2x.png'),
                                fit: BoxFit.cover)),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color(0xaa000000),
                                Color(0xaa000000)
                              ])),
                        )),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFD48593)),
                              color: Color(0xff260E0E),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(children: [
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  "Tell your friend to check out top companies run by Women 👩🏽‍💻",
                                  style: TextStyle(
                                    fontFamily: 'Clash',
                                    fontSize: 14,
                                    color: Color(0xffF7C97E),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
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
                                              fontSize: 16,
                                              color: Color(0xffF7C97E)),
                                        )
                                      ],
                                    ),
                                  )),
                            )
                          ]),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return info[index];
          }, childCount: info.length)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff371C1C),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.warning_rounded,
                          color: Colors.red[400],
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "This collection is not investment advice.",
                        style: TextStyle(
                            color: Color(0xff727272),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Clash'),
                      ),
                      Text("Do your own research before investing.",
                          style: TextStyle(
                              color: Color(0xff727272),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: 'Clash')),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
