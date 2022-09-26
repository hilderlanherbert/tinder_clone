import 'package:flutter/material.dart';
import 'package:tinder_signing_flutter/src/features/auth/components/social_button.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xffee7462),
              Color(0xffe94976),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(children: [
            SizedBox(height: size.height * 0.3),
            Center(
              child: Image.asset(
                'assets/images/tinder-logo.png',
                width: 140,
              ),
            ),
            SizedBox(height: size.height * 0.08),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'By tapping create Account or Sign In, you agree to our ',
                style: TextStyle(fontSize: 16, color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: ' Learn how we process you data in our ',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(text: ' and ', style: TextStyle(fontSize: 16)),
                  TextSpan(
                    text: 'Cookies Policy.',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const SocialButton(
              text: 'SIGN IN WITH APPLE',
              url: 'assets/images/logo_apple.png',
            ),
            SizedBox(height: size.height * 0.02),
            const SocialButton(
              text: 'SIGN IN WITH FACEBOOK',
              url: 'assets/images/logo_facebook.png',
            ),
            SizedBox(height: size.height * 0.02),
            const SocialButton(
              text: 'SIGN IN WITH PHONE NUMBER',
              url: 'assets/images/bubble.png',
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(height: size.height * 0.02),
            const Expanded(
              child: Text(
                'Trouble Signing In?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
