import 'package:bloco_de_notas/model/anotacao.dart';
import 'package:flutter/material.dart';

class DetalheAnotacaoPage extends StatefulWidget {
  final Anotacao anotacao;

  const DetalheAnotacaoPage({Key? key, required this.anotacao}) : super(key: key);

  @override
  DetalheAnotacaoPageState createState() => DetalheAnotacaoPageState();
}

class DetalheAnotacaoPageState extends State<DetalheAnotacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text('Detalhes da Anotação'),
        centerTitle: false,
      ),
      body: _criarBody(),
    );
  }

  Widget _criarBody() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Row(
            children: [
              Campo(descricao: 'Código: ${widget.anotacao.id}'),
            ],
          ),
          Row(
            children: [
              Campo(descricao: 'Título: ${widget.anotacao.titulo}'),
            ],
          ),
          Row(
            children: [
              Campo(descricao: 'Descrição: ${widget.anotacao.descricao}'),
            ],
          ),
          Row(
            children: [
              Campo(descricao: 'Latitude: ${widget.anotacao.latitude}'),
            ],
          ),
          Row(
            children: [
              Campo(descricao: 'Longitude: ${widget.anotacao.longitude}'),
            ],
          ),
        ],
      ),
    );
  }
}

class Campo extends StatelessWidget {
  final String descricao;

  const Campo({Key? key, required this.descricao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        descricao,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}