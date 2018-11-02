import 'package:flutter/material.dart';

import 'listElement.dart';

void main() => runApp(App2());

class _App2State extends State<App2> {
  List<String> lista = [];
  final tFcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "My Second Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("StudyJam => Listview"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: tFcontroller,
              cursorColor: Colors.green,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    //print(tFcontroller.text);
                    lista.add(tFcontroller.text);
                  });
                },
                child: Text(" Adcionar Participante"),
              ),
            ),
            Renderizacao(lista)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tFcontroller.dispose();
    super.dispose();
  }
}

class App2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _App2State();
  }
}
