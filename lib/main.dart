import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SafeArea(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/avatar.jpg'),
              radius: 50.0,
            ),
            Container(
              margin: const EdgeInsets.only(top: 6.0),
              child: Text(
                'Viet Duc Vu',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                  fontFamily: 'Engagement',
                ),
              ),
            ),
            Text(
              'Praktische Informatik',
              style: TextStyle(
                  color: Colors.brown[100],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'NotoSans',
                  letterSpacing: 1.5),
            ),
            SizedBox(child: Divider(color: Colors.white), width: 140, height: 25),
            Card(
                color: Colors.brown[10],
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                child: ListTile(
                  leading:
                      Icon(Icons.call, color: Colors.orangeAccent.shade200),
                  title: Text(' +49 1520 3707 396',
                      style: TextStyle(
                          color: Colors.brown[500],
                          fontFamily: 'Weem',
                          fontSize: 18.0,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold)),
                )),
            Card(
                color: Colors.brown[10],
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                child: ListTile(
                  leading:
                      Icon(Icons.email, color: Colors.orangeAccent.shade200),
                  title: Text(' viet.vu001@stud.fh-dortmund.de',
                      style: TextStyle(
                          color: Colors.brown[500],
                          fontFamily: 'Weem',
                          fontSize: 18.0,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold)),
                )),
          ],
        ),
      ),
      backgroundColor: Colors.brown[500],
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
