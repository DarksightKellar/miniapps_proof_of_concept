import 'package:flutter/material.dart';
import 'package:miniapp1/miniapp1.dart';
import 'package:miniapp2/miniapp2.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Mini App Home Page'),
        '/miniapp1': (context) => MiniApp1(),
        '/miniapp2': (context) => MiniApp2()
      },
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
                  Navigator.pushNamed(context, '/miniapp${index + 1}');
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
