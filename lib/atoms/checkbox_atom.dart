// import 'dart:html';

import 'package:flutter/material.dart';

class CheckboxAtom extends StatefulWidget {
  const CheckboxAtom({super.key});

  static const routeName = '/checkbox';

  @override
  State<CheckboxAtom> createState() => _CheckboxAtomState();
}

class _CheckboxAtomState extends State<CheckboxAtom> {
  bool valueFirst = false;
  bool valueSecond = false;
  bool isCheckedTile = false;

  Map<String, bool?> lightSwitches = {
    'Living Room': true,
    'BedRoom': true,
    'Dining Room': true,
    'Kitchen': true,
    'Entrance': true,
  };

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Checkbox without Header and Subtitle: ',
            style: TextStyle(fontSize: 17.0),
          ),
          Checkbox(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            value: valueFirst,
            onChanged: (bool? value) {
              setState(() {
                valueFirst = value!;
              });
            },
          ),
          Checkbox(
            value: valueSecond,
            onChanged: (bool? value) {
              setState(() {
                valueSecond = value!;
              });
            },
          ),
        ],
      ),
      CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        secondary: Icon(isCheckedTile ? Icons.check : Icons.cancel),
        title: const Text('Light Switches'),
        subtitle: const Text(
          'Enable light switch controls by clicking this checkbox',
        ),
        value: isCheckedTile,
        onChanged: (bool? value) {
          setState(() {
            isCheckedTile = value!;
          });
        },
      ),
      isCheckedTile
          ? Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: lightSwitches.keys
                            .map((roomName) => CheckboxListTile(
                                  title: Text(roomName),
                                  value: lightSwitches[roomName],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      lightSwitches[roomName] = value;
                                    });
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity - 50,
              height: 200,
              color: Colors.black87,
              child: const Center(
                child: Text(
                  'No Controls to show',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
      Container(
        padding: const EdgeInsets.all(10.0),
        child: const Text(
          'Light Icons',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black54),
        ),
      ),
      Expanded(
        flex: 1,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: lightSwitches.keys
                .map((roomName) => LightBulbCard(
                      on: lightSwitches[roomName],
                      room: roomName,
                    ))
                .toList(),
          ),
        ),
      )
    ]);
  }
}

class LightBulbCard extends StatelessWidget {
  const LightBulbCard({
    super.key,
    this.on = true,
    this.room = 'Room Name',
  });
  final bool? on;
  final String room;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffeeeeee), width: 2.0),
        color: Colors.white38,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        boxShadow: const [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
            Icons.lightbulb,
            size: 100.0,
            color: on! ? Colors.greenAccent : Colors.grey,
          )),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            room,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
