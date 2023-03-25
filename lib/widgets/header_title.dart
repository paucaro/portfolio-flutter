import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 200,
      width: 200,
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          Container(
            color: Colors.red,
            height: 50,
            width: 120,
            child: Center(child: Text("title")),
          ),
          Positioned(
            bottom: -10,
            // right: 20,
            // left: 20,
            child: Container(
              // height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
