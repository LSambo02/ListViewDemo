import 'package:flutter/material.dart';

class participantesDetalhes extends StatefulWidget {
  String imagem, nome;

  participantesDetalhes(this.imagem, this.nome);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _participantesDetalhesState(imagem, nome);
  }
}

class _participantesDetalhesState extends State<participantesDetalhes> {
  final String imagem, nome;

  _participantesDetalhesState(this.imagem, this.nome);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: Row(
        children: <Widget>[
          Image.asset(
            imagem,
            width: 100.0,
            height: 60.0,
          ),
          Text(
            nome,
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
