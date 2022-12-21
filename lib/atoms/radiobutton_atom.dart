import 'package:flutter/material.dart';

enum Pet { dog, cat }

/// This is the stateful widget that the main application instantiates.
class RadioButtonAtom extends StatefulWidget {
  static const routeName = '/radio-button';

  const RadioButtonAtom({super.key});

  @override
  State<RadioButtonAtom> createState() => _RadioButtonAtomState();
}

/// This is the private State class that goes with RadioButtonAtom.
class _RadioButtonAtomState extends State<RadioButtonAtom> {
  Pet _pet = Pet.dog;
  int value = 1;

  Widget CustomRadioButton(String text, int index) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        style: ButtonStyle(
            side: MaterialStateProperty.all(
              BorderSide(
                color: (value == index) ? Colors.blueGrey : Colors.black,
                width: 3,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              (value == index) ? Colors.blue : Colors.grey,
            )),
        child: Text(
          text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          title: const Text('Dog'),
          leading: Radio<Pet>(
            value: Pet.dog,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Cart'),
          leading: Radio<Pet>(
            value: Pet.cat,
            groupValue: _pet,
            onChanged: (Pet? value) {
              setState(() {
                _pet = value!;
              });
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text(
            'Custom Radio Buttons',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black54),
          ),
        ),
        CustomRadioButton("Single", 1),
        CustomRadioButton("Married", 2),
        CustomRadioButton("Other", 3)
      ],
    );
  }
}
