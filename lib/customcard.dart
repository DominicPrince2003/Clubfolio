import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.image,
    required this.name,
    required this.position,
    required this.imgicon,
    required this.company,
  });
  final AssetImage image;
  final String name, position, company;
  final AssetImage imgicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.grey[900],
        ),
        height: 175,
        width: 800,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: Image(image: imgicon),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        company,
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Clash'),
                      ),
                      SizedBox(width: 225),
                      Icon(
                        FontAwesomeIcons.arrowRightLong,
                        color: Colors.grey[700],
                        size: 30,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\u{20B9}${123.82}',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Clash'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Transform.rotate(
                            angle: -45,
                            child: Icon(
                              Icons.arrow_downward_sharp,
                              color: Colors.red[400],
                            ),
                          ),
                          Text(
                            "3.87% in 1 year",
                            style: TextStyle(
                                fontFamily: 'Clash', color: Colors.red[400]),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: image),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Clash'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              position,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
