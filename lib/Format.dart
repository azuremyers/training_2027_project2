import 'package:flutter/material.dart';

class Format extends StatefulWidget {
  const Format({super.key});

  @override
  State<Format> createState() => FormatState();
}

class FormatState extends State<Format> {
  Widget buildBox(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Team number: 2910')],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Match number: 4')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('L1'),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('+1'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('-1'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('L2'),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('+1'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('-1'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('L3'),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('+1'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('-1'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('L4'),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('+1'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('-1'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Broke?'),
                          BrokeSwitch(),
                        ],
                      ),
                    ),
                    Container(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class BrokeSwitch extends State<StatefulWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeThumbColor: Colors.pink,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}