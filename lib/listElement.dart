import 'package:flutter/material.dart';

class Renderizacao extends StatelessWidget {
  List<String> data =[];
  Renderizacao(List data);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Expanded(
        child: new ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext bcontext, int index) {
              return new Row(
                children: <Widget>[
                  Image.asset('assets/person.jpg',height: 200.0,width: 150.0,),
                  Text(data[index])
                ],
              );
            }));
  }
}
