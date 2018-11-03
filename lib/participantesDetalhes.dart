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
        child: Column(
          children: <Widget>[Image.asset(imagem), Text(nome)],
        ),
      );

  }
}
