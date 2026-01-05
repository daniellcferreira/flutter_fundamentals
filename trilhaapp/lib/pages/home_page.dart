import 'package:flutter/material.dart';
import 'package:trilhaapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meu App Flutter")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Foi clicado $quantidadeCliques vezes",
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Número gerado: $numeroGerado",
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            quantidadeCliques++;
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(
              100,
            );
          });
        },
        child: const Icon(Icons.add_box),
      ),
    );
  }
}
