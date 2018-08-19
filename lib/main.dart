import 'package:flutter/material.dart';

void main()
 {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Learn Layout',
      home: new HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final String colomnString = 'This is Column';
  final String rowString = 'This is Row';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Home Page'),),
      body: new Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(15.0),
        child: new Column(children: <Widget>[
          new Text(colomnString, style: new TextStyle(fontSize: 25.0),),
          new Text(colomnString, style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
          new Text(colomnString, style: new TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),),
          new Text(colomnString, style: new TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal),),
          new Container(
            color: Colors.red,
            padding: EdgeInsets.all(15.0),
            child: new Row(children: <Widget>[
              new Expanded(child: new Text(rowString, style: new TextStyle(color: Colors.white),)),
              new Expanded(child: new Text(rowString, style: new TextStyle(color: Colors.white),)),
              new Expanded(child: new Text(rowString, style: new TextStyle(color: Colors.white),))
            ],),)
        ],),
      ),
    );
  }
}

