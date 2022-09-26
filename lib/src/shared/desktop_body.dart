import 'package:flutter/material.dart';
import 'package:tinder_signing_flutter/src/features/auth/components/social_button.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      'assets/images/tinder-logo.png',
                      width: 250,
                    ),
                  ),
                  const SizedBox(height: 25),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text:
                          'By tapping create Account or Sign In, you agree to our ',
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
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 45),
                  SocialButton(
                    text: 'SIGN IN WITH APPLE',
                    url: 'assets/images/logo_apple.png',
                  ),
                  SizedBox(height: 25),
                  SocialButton(
                    text: 'SIGN IN WITH FACEBOOK',
                    url: 'assets/images/logo_facebook.png',
                  ),
                  SizedBox(height: 25),
                  SocialButton(
                    text: 'SIGN IN WITH PHONE NUMBER',
                    url: 'assets/images/bubble.png',
                  ),
                  SizedBox(height: 25),
                  SizedBox(height: 25),
                  Text(
                    'Trouble Signing In?',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
