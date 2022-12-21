import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key});

  static const routeName = '/layouts';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: Column(
        children: [
          Row(
            children: [
              ContainerWidget(color: Colors.black),
              ContainerWidget(color: Colors.red),
              ContainerWidget(color: Colors.blue),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContainerWidget(
                color: Colors.black,
              ),
              ContainerWidget(
                color: Colors.red,
                flex: 2,
              ),
              ContainerWidget(color: Colors.blue),
            ],
          ),
          Container(
            color: Colors.orange[50],
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 95.4,
                    color: Colors.pink,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'hello',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    color: Colors.red,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Hello Expanded',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  Color? color = Colors.white;
  int? flex = 1;

  ContainerWidget({
    this.color,
    this.flex,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex ?? 1,
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 100,
        color: color,
      ),
    );
  }
}
