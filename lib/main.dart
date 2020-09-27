import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  final _ctrler = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _ctrler.addListener(() {
      final next = _ctrler.page.round();
      if (_currentPage != next)
        setState(() {
          _currentPage = next;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        controller: _ctrler,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: _currentPage == 0 ? 100 : 200,
              right: 20,
              left: 20,
            ),
            color: Colors.amber,
          ),
          Container(
            margin: EdgeInsets.only(
              top: _currentPage == 1 ? 100 : 200,
              right: 20,
              left: 20,
            ),
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.only(
              top: _currentPage == 2 ? 100 : 200,
              right: 20,
              left: 20,
            ),
            color: Colors.purple,
          ),
          Container(
            margin: EdgeInsets.only(
              top: _currentPage == 3 ? 100 : 200,
              right: 20,
              left: 20,
            ),
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.only(
              top: _currentPage == 4 ? 100 : 200,
              right: 20,
              left: 20,
            ),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
