import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 100,
      width: 400,
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              height: 50,
              width: 75,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            // bottom: 10,
            bottom: 5,
            left: 40,
            child: Container(
              height: 50,
              width: 90,
              color: Colors.blue,
            ),
          ),
          Positioned(
            // bottom: 10,
            top: 5,
            right: 10,
            child: Container(
              height: 50,
              width: 90,
              color: Colors.pink,
            ),
          ),
          Positioned(
            // bottom: 10,
            bottom: 5,
            right: 5,
            child: Container(
              height: 50,
              width: 20,
              color: Colors.purple,
            ),
          ),
          Container(
            color: Colors.red,
            height: 50,
            width: 380,
            child: Center(child: Text("title")),
          ),
        ],
      ),
    );
  }
}

class WidgetAnimated extends AnimatedWidget {
  const WidgetAnimated({
    super.key,
    required Animation<double> animationController,
  }) : super(listenable: animationController);

  @override
  Widget build(BuildContext context) {
    final animationValue = listenable as Animation<double>;
    return Transform.translate(
      offset: Offset(0.0, (1 - animationValue.value) * 150),
      child: HeaderTitle(),
    );
  }
}
