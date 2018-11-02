import 'package:flutter/material.dart';
import 'detalhes.dart';

class Renderizacao extends StatelessWidget {
  List<String> data = [];

  Renderizacao(this.data);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print(data.length);
    return new Expanded(
        child: new ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return new RaisedButton(
                onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPage('assets/flutter.png', data[index]);
                    }));

                },
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/flutter.png',
                      height: 90.0,
                      width: 75.0,
                    ),
                    Text(data[index])
                  ],
                ),
              );
            }));
  }
}
