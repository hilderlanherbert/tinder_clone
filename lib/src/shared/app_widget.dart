import 'package:flutter/material.dart';
import 'package:tinder_signing_flutter/src/features/auth/signin.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Signin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
