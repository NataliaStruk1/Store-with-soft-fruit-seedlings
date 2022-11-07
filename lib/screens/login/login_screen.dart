import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/screens/login/components/data_container.dart';

class Loginpage extends StatefulWidget {
  Loginpage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var errorMasage = '';
  var isCreatingAcount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/WhatsApp Image 2022-11-06 at 22.40.42.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 130,
            ),
            Text(
              'Hello Again!',
              style: GoogleFonts.signika(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            ContainerWithEmail(
              email: 'Email',
              widget: widget,
            ),
            const SizedBox(
              height: 25,
            ),
            ContainerWithPassword(widget: widget, password: 'Password'),
            const SizedBox(height: 20.0),
            Text(errorMasage),
            ElevatedButton(
              onPressed: () async {
                if (isCreatingAcount == true) {
                  try {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text);
                  } catch (error) {
                    setState(() {
                      errorMasage = error.toString();
                    });
                  }
                  //rejestracja
                } else {
                  try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text);
                  } catch (error) {
                    setState(() {
                      errorMasage = error.toString();
                    });
                  }
                } //logowanie
              },
              child: Text(isCreatingAcount == true ? 'Signup' : 'Login'),
            ),
            const SizedBox(
              height: 100.0,
            ),
            if (isCreatingAcount == false)
              TextButton(
                onPressed: () {
                  setState(() {
                    isCreatingAcount = true;
                  });
                },
                child: const Text(
                  'Create an account',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            if (isCreatingAcount == true)
              TextButton(
                onPressed: () {
                  setState(() {
                    isCreatingAcount = false;
                  });
                },
                child: const Text('Already have an account?'),
              ),
          ],
        ),
      ),
    );
  }
}
