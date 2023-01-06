import 'package:clubfolio/women_page.dart';
import 'package:flutter/material.dart';
import 'custombutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/': (context) => HomePage(),
      '/wpage': (context) => Wpage(),
    });
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/Vector.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "clubfolio",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Text("collections",
                    style: TextStyle(
                        color: Color(0xFFD3FF76),
                        fontSize: 45,
                        fontFamily: 'Roxie')),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 500,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dummyData.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250,
                              childAspectRatio: 1,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return GridTile(child: dummyData[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}

List<CustomButton> dummyData = [
  CustomButton(
      r: '/wpage',
      color: Color(0xff2B0000),
      textColor: Color(0xFFD48593),
      image: AssetImage('images/women@2x.png'),
      text: "Top companies led by Women 👑"),
  CustomButton(
    color: Color(0XFF251506),
    textColor: Color(0XFFFFA841),
    image: AssetImage('images/gold@2x.png'),
    text: "Invest in Gold ✨",
  ),
  CustomButton(
    color: Color(0xff003643),
    textColor: Color(0xff84D5FF),
    image: AssetImage('images/100@2x.png'),
    text: "Start with ₹100 💯 ",
  ),
  CustomButton(
      color: Color(0xea001b19),
      textColor: Color(0xff29b79c),
      image: AssetImage('images/realestate@2x.png'),
      text: "Invest in Real Estate 🏡"),
];
