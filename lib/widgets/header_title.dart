import 'dart:math';

import 'package:flutter/material.dart';

class HeaderTitle extends StatefulWidget {
  const HeaderTitle({super.key});

  @override
  State<HeaderTitle> createState() => _HeaderTitleState();
}

class _HeaderTitleState extends State<HeaderTitle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
            child: WidgetAnimated(
              const CustomContainerWidget(
                heigth: 50,
                width: 20,
                color: Colors.purple,
              ),
              animationController: _animationController,
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

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    super.key,
    required this.heigth,
    required this.width,
    required this.color,
  });

  final double heigth;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth,
      width: width,
      color: color,
    );
  }
}

class WidgetAnimated extends AnimatedWidget {
  const WidgetAnimated(this._widget,
      {super.key, required Animation<double> animationController})
      : super(listenable: animationController);

  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    final animationValue = listenable as Animation<double>;
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animationValue,
        curve: Curves.easeInOut,
      ),
      child: _widget,
    );
  }
}
