import 'package:flutter/material.dart';

void main() {
  runApp(const ContadorApp());
}

class ContadorApp extends StatelessWidget {
  // esqueleto do app, não guarda dados, apenas constrói a tela inicial
  const ContadorApp({super.key});
  
  // construtor da classe, que recebe a key do widget pai (super.key) e passa para o construtor da classe pai (StatelessWidget)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador de Inspeção',
      // titulo interno do app

      home: const TelaContador(),
      // tela inicial do app, que é a tela de contador
    );
  }
}

class TelaContador extends StatefulWidget {
  // A tela precisa lembrar do estado, então ela é um StatefulWidget
  //essa classe ainda não armazena nada por si só, mas declara que tem um state nela

  const TelaContador({super.key});

  @override
  State<TelaContador> createState() => _TelaContadorState();
  //o createState() é o metodo que o flutte chama para criar o objeto de estado "_telacontadorstate" ligado a este widget.
  //o _ é a convenção de quando tá sendo criado um state
}

class _TelaContadorState extends State<TelaContador> {
  //esta é a classe que efetivamente guarda os dados que podem mudar durante o uso do app
  //é a caixinha que consegue ser passada de cidade em cidade (telas)

  int _pecasAprovadas = 0;
  // Variavel de peças aprovadas, inicializada com 0

  final _nomeController = TextEditingController();
  // O TextingEditingController é tipo uma ponte do que aparece na tela para o que está guardado na memória, 
  // ele é o que permite ler e escrever no campo de texto
}