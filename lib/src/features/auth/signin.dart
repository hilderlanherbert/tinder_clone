import 'package:flutter/material.dart';
import 'package:tinder_signing_flutter/src/shared/desktop_body.dart';
import 'package:tinder_signing_flutter/src/shared/mobile_body.dart';
import 'package:tinder_signing_flutter/src/shared/responsive_layout.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading:
              IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
        ),
        body: const ResponsiveLayout(
            mobile: MobileBody(), desktop: DesktopBody()));
  }
}
