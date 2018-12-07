import 'package:flutter/material.dart';

import 'listElement.dart';

void main() => runApp(App2());

class _App2State extends State<App2> {
  List<String> lista = [];
  final tFcontroller = new TextEditingController();
  int counter =0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "My Second Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Marvel Call Sheet"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            Container(margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: TextField(
                controller: tFcontroller,
                cursorColor: Colors.green,
              ),
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    //print(tFcontroller.text);
                    if(tFcontroller.text!=""){
                      lista.add(tFcontroller.text);
                      tFcontroller.clear();
                    }
                  counter++;
                  });
                },
                child: Text("Adcionar Participante", style: TextStyle(color: Colors.blue),),
              ),
            ),
            Renderizacao(lista,counter)
          ],
        ), backgroundColor: Colors.lightBlueAccent,
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
