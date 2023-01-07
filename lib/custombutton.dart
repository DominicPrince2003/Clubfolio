import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.color,
      required this.textColor,
      required this.image,
      required this.text,
      r = '/wpage'});

  final Color color;
  final Color textColor;
  final AssetImage image;
  final String text;
  final String r = '/wpage';
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, r);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: textColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    wordSpacing: 2,
                    fontFamily: 'Clash',
                    fontSize: 18,
                    color: textColor,
                  ),
                ),
              ),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: color),
            ),
            ClipRect(
                child: Hero(
              tag: image,
              child: Image(image: image),
            )),
          ],
        ),
      ),
    );
  }
}
