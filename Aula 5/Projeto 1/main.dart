import 'package:flutter/material.dart';
// imports do flutter e material design

void main() {
  //primeira função a ser executada quando o app roda

  runApp(const CrachaApp());
}

class CrachaApp extends StatelessWidget {
  const CrachaApp({super.key});
  //contrutor da classe. O 'super.key' é usado para passar a chave para a classe pai, que é o StatelessWidget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crachá Digital',

      //title do navegador
      home: Scaffold(
        appBar: AppBar(
          //AppBar é a barra de navegação do topo do app, tipo Header do HTML
          title: const Text('Crachá Digital'),

          //esse vai p tela
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          // dá um padding de 24px em todos os lados do body

          child: Column(
            // deixa na vertical, ou seja, empilha os elementos
            crossAxisAlignment: CrossAxisAlignment.stretch,

            //linha hortizontal (cruzada) e o stretch é igual o 100% no css
            children: [
              //filhos do column, ou seja, os elementos que vão ser empilhados verticalmente
              Container(
                //container dá uma caixa de estilo p/ o conteudo
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  // arredonda os cantos do container

                  border: Border.all(color: Colors.blue.shade50),
                  //desenha a borda do container
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'Recruta 026, GERLACH',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),

                    Text(
                      'Tecnico de Manutenção',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    //Para texto
                    SizedBox(height: 4),

                    Row(
                      children: [
                        Icon(Icons.factory, color: Colors.white),

                        //Adiciona Icones
                        SizedBox(width: 8),
                        Text('setor manutenção industrial'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              FilledButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Acesso Liberado!')),
                    //Mostra uma mensagem temporaria de sucesso na tela, tipo um alerta
                  );
                },
                icon: const Icon(Icons.lock_open),
                label: const Text('Liberar Acesso'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}