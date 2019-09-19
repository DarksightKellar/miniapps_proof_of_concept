import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Application roott
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini App POC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mini App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(3, (index) {
            return Center(
              child: FlatButton(
                focusColor: Colors.black,
                onPressed: () {
                  var alert = AlertDialog(content: Text('hi will open mini app soon'));
                  showDialog(
                      context: context,
                      builder: (context) {
                        return alert;
                      });
                },
                child: Text(
                  'App $index',
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
