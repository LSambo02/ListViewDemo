import 'package:flutter/material.dart';
import 'participantesDetalhes.dart';

class DetailPage extends StatefulWidget {

  final String data,data1;

  DetailPage(this.data,this.data1);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: participantesDetalhes(widget.data,widget.data1),
    );
  }
}
