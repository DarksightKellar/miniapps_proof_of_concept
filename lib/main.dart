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
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Mini App Home Page'),
        '/miniapp1': (context) => MiniApp1(context),
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
  Widget buildAppIcon(BuildContext context, String route, String appName) {
    return Center(
      child: FlatButton(
        focusColor: Colors.black,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          appName,
          style: Theme.of(context).textTheme.headline,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(crossAxisCount: 2, children: [
          buildAppIcon(context, '/miniapp1', MiniApp1.appName),
          buildAppIcon(context, '/miniapp2', 'App 2'),
        ]),
      ),
    );
  }
}
