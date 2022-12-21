import 'package:flutter/material.dart';

class AvatarAtom extends StatelessWidget {
  const AvatarAtom({super.key});

  static const routeName = '/avatar';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text('AH'),
        ),
        CircleAvatar(
          backgroundColor: Colors.blue,
          foregroundImage: NetworkImage(
            'https://img.freepik.com/premium-psd/3d-female-cartoon-character-avatar-isolated-3d-rendering_235528-956.jpg?w=740',
          ),
          backgroundImage: NetworkImage(
            'https://img.freepik.com/premium-psd/3d-female-cartoon-character-avatar-isolated-3d-rendering_235528-956.jpg?w=740',
          ),
          child: Text('AH'),
        ),
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 50,
          child: Text(
            'HA',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.blue,
          foregroundImage: NetworkImage(
            'https://img.freepik.com/premium-psd/3d-female-cartoon-character-avatar-isolated-3d-rendering_235528-956.jpg?w=740',
          ),
          backgroundImage: NetworkImage(
            'https://img.freepik.com/premium-psd/3d-female-cartoon-character-avatar-isolated-3d-rendering_235528-956.jpg?w=740',
          ),
          radius: 50,
          child: Text('AH'),
        ),
      ],
    );
  }
}
