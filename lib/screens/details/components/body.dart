import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/details/components/image_and_icons.dart';
import 'package:plantapp/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        ImageAndIcons(size: size),
        const TitleAndPrice(
          title: "Duke",
          country: "the Netherlands",
          price: 8,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: const Color.fromARGB(255, 52, 103, 205),
                ),
                onPressed: () {},
                child: const Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text("Description"),
              ),
            ),
          ],
        ),
        const SizedBox(height: kDefaultPadding * 2),
      ]),
    );
  }
}
