import 'package:flutter/material.dart';
import 'detalhes.dart';

class Renderizacao extends StatelessWidget {
  List<String> data = [];
  int counter;

  Renderizacao(this.data,this.counter);

  @override
  Widget build(BuildContext context) {
    String imagem= 'assets/marvel.jpeg';
    // TODO: implement build
    //print(data.length);
    return new Expanded(
        child: new ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext r, int index) {
              return new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(imagem, data[index]);
                  }));
                },
                color: Colors.lightBlueAccent,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        imagem,
                        height: 90.0,
                        width: 75.0,
                      ),
                      Column(children: <Widget>[Text(data[index], style: TextStyle(fontSize: 18.0),),Text("Super Hero " + (index+1).toString())],),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 4.0),
                color: Colors.grey,),
              );
            }));
  }
}
