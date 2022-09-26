import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String url;
  final String text;

  const SocialButton({super.key, required this.text, required this.url});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 2, color: Colors.white),
          shape: const StadiumBorder(
              side: BorderSide(color: Colors.white, width: 50.0))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              url,
              width: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
