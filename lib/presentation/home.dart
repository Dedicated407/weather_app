import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather application!'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      Expanded(
          child: Column(children: const [
        Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(136, 14, 79, 1))),
                hintText: 'Write latitude',
                focusColor: Colors.red,
              ),
            )),
        Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(136, 14, 79, 1))),
                hintText: 'Write longitude',
                focusColor: Colors.red,
              ),
            )),
      ])),
      Container(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          child: const Text(
            'Weather daily',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/weather_daily');
          },
        ),
      ),
    ]);
  }
}
