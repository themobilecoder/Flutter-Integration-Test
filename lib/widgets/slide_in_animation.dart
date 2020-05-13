import 'package:flutter/material.dart';

class SlideInAnimation extends StatelessWidget {
  SlideInAnimation({@required this.child, this.begin});

  final Widget child;
  final Offset begin;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<Offset>(begin: begin ?? Offset(400, 0), end: Offset.zero),
      curve: Curves.linearToEaseOut,
      duration: Duration(milliseconds: 800),
      builder: (context, value, child) {
        return Transform.translate(
          offset: value,
          child: child,
        );
      },
      child: child,
    );
  }
}
