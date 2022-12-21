import 'package:flutter/material.dart';

const List<Widget> fruits = <Widget>[
  Text('Apple'),
  Text('Banana'),
  Text('Orange')
];

const List<Widget> vegetables = <Widget>[
  Text('Tomatoes'),
  Text('Potatoes'),
  Text('Carrots')
];

const List<Widget> icons = <Widget>[
  Icon(Icons.sunny),
  Icon(Icons.cloud),
  Icon(Icons.ac_unit),
];

class ButtonAtom extends StatefulWidget {
  const ButtonAtom({super.key});

  static const routeName = '/button';

  @override
  State<ButtonAtom> createState() => _ButtonAtomState();
}

class _ButtonAtomState extends State<ButtonAtom> {
  final List<bool> _selectedFruits = <bool>[true, false, false];
  final List<bool> _selectedVegetables = <bool>[false, true, false];
  final List<bool> _selectedWeather = <bool>[false, false, true];
  var _selectedval;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Text Button'),
              icon: const Icon(Icons.wallet),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              ),
              child: const Text('ElevatedButton Button'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('ElevatedButton Button'),
              icon: const Icon(Icons.wallet),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              ),
              child: const Text('OutlinedButton Button'),
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('OutlinedButton Button'),
              icon: const Icon(Icons.wallet),
              style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Single-select'),
            const SizedBox(height: 20),
            ToggleButtons(
              direction: Axis.vertical,
              onPressed: (int index) {
                setState(() {
                  // The button that is tapped is set to true, and the others to false.
                  for (int i = 0; i < _selectedFruits.length; i++) {
                    _selectedFruits[i] = i == index;
                  }
                });
              },
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              selectedBorderColor: Colors.red[700],
              selectedColor: Colors.white,
              fillColor: Colors.red[200],
              color: Colors.red[400],
              constraints: const BoxConstraints(
                minHeight: 40.0,
                minWidth: 80.0,
              ),
              isSelected: _selectedFruits,
              children: fruits,
            ),
            const SizedBox(height: 20),
            const Text('Multi-select'),
            const SizedBox(height: 20),
            ToggleButtons(
              direction: Axis.horizontal,
              onPressed: (int index) {
                // All buttons are selectable.
                setState(() {
                  _selectedVegetables[index] = !_selectedVegetables[index];
                });
              },
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              selectedBorderColor: Colors.green[700],
              selectedColor: Colors.white,
              fillColor: Colors.green[200],
              color: Colors.green[400],
              constraints: const BoxConstraints(
                minHeight: 40.0,
                minWidth: 80.0,
              ),
              isSelected: _selectedVegetables,
              children: vegetables,
            ),
            const SizedBox(height: 20),
            const Text('Icon-only'),
            const SizedBox(height: 20),
            ToggleButtons(
              direction: Axis.horizontal,
              onPressed: (int index) {
                setState(() {
                  // The button that is tapped is set to true, and the others to false.
                  for (int i = 0; i < _selectedWeather.length; i++) {
                    _selectedWeather[i] = i == index;
                  }
                });
              },
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              selectedBorderColor: Colors.blue[700],
              selectedColor: Colors.white,
              fillColor: Colors.blue[200],
              color: Colors.blue[400],
              isSelected: _selectedWeather,
              children: icons,
            ),
            // ButtonBar(
            //   buttonAlignedDropdown: true,
            //   alignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: const Text('Button'),
            //       style: ElevatedButton.styleFrom(
            //           padding: const EdgeInsets.symmetric(
            //               vertical: 8, horizontal: 20)),
            //     ),
            //     IconButton(onPressed: () {}, icon: Icon(Icons.arrow_downward)),
            //     ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //             padding: const EdgeInsets.all(0)),
            //         onPressed: () {},
            //         child: const Icon(Icons.arrow_downward)),
            //   ],
            // ),
            const SizedBox(height: 20),

            Column(
              children: [
                SizedBox(
                  height: 48,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            margin: const EdgeInsets.only(left: 5),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Split Button',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            margin: const EdgeInsets.only(left: 5),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                            child: const Center(
                              child: Icon(Icons.settings, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: const [
                      Text('hello'),
                      Text('World'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
