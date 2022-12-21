import 'package:flutter/material.dart';

class RichTextAtom extends StatelessWidget {
  const RichTextAtom({super.key});

  static const routeName = '/rich-text';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 28),
          children: [
            TextSpan(text: 'Hello '),
            TextSpan(
              text: 'bold',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: ' italic',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
