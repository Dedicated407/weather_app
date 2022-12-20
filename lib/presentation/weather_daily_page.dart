import 'package:flutter/material.dart';


class WeatherDailyPage extends StatefulWidget {
  const WeatherDailyPage({Key? key}) : super(key: key);

  @override
  State<WeatherDailyPage> createState() => _WeatherDailyPageState();
}

class _WeatherDailyPageState extends State<WeatherDailyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily page'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'Home page',
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(children: const [
      Text(
        'This is daily page!!!!!!!',
        style: TextStyle(fontSize: 20),
        textDirection: TextDirection.ltr,
      ),
    ]);
  }

}
