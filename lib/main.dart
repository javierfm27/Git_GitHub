import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curso Git y GitHub',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(title: 'Espero te este gustando el curso'),

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
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title,style: TextStyle(backgroundColor: Colors.blueGrey),),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Boton Presionado.',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Contactos',
        child: Icon(Icons.account_box),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
