import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class MyAccountPageContent extends StatelessWidget {
  const MyAccountPageContent({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Jesteś zalogowany jako $email}'),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 97, 133, 242)),
            child: const Text('Wyloguj się'),
          ),
        ],
      ),
    );
  }
}
