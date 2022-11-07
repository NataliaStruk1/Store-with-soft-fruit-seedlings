import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/login/login_screen.dart';

class ContainerWithPassword extends StatelessWidget {
  const ContainerWithPassword({
    Key? key,
    required this.widget,
    required this.password,
  }) : super(key: key);

  final Loginpage widget;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.30),
          ),
        ],
      ),
      child: TextField(
        controller: widget.passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: password,
          hintStyle: TextStyle(
            color: kPrimaryColor.withOpacity(0.5),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}

class ContainerWithEmail extends StatelessWidget {
  const ContainerWithEmail({
    Key? key,
    required this.widget,
    required this.email,
  }) : super(key: key);

  final Loginpage widget;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.30),
          ),
        ],
      ),
      child: TextField(
        controller: widget.emailController,
        decoration: InputDecoration(
          hintText: email,
          hintStyle: TextStyle(
            color: kPrimaryColor.withOpacity(0.5),
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
