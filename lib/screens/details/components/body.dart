import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: Column(),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/unnamed.jpg"),
              ),
            ),
          )
        ],
      )
    ]);
  }
}
