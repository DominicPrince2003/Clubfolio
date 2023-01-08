import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'women_page.dart';
import 'package:page_transition/page_transition.dart';

class CustomButton extends StatefulWidget {
  final Color color;
  final Color textColor;
  final AssetImage image;
  final String text;
  String r = '/wpage';
  String tag;
  CustomButton(
      {required this.color,
      required this.textColor,
      required this.image,
      required this.text,
      required this.tag,
      r});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 750));
    _animation = Tween(begin: 0.0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: widget.textColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.text,
                  style: TextStyle(
                    wordSpacing: 2,
                    fontFamily: 'Clash',
                    fontSize: 18,
                    color: widget.textColor,
                  ),
                ),
              ),
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: widget.color),
            ),
            ClipRect(
              child: Hero(tag: widget.tag, child: Image(image: widget.image)),
            ),
            Container(
              child: Material(
                child: InkWell(
                  radius: 1000,
                  splashColor: widget.color,
                  onTap: () {
                    _controller.forward();
                    _animation.addStatusListener((status) {
                      if (status == AnimationStatus.completed) {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Wpage(),
                                duration: Duration(milliseconds: 5),
                                type: PageTransitionType.fade));
                        _controller.reset();
                      }
                    });
                  },
                  child: new Container(
                    width: 220.0,
                    height: 200.0,
                  ),
                ),
                color: Colors.transparent,
              ),
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
