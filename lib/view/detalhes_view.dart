import 'package:flutter/material.dart';

class DetalhesView extends StatefulWidget {
  const DetalhesView({super.key});

  @override
  State<DetalhesView> createState() => _DetalhesViewState();
}

class _DetalhesViewState extends State<DetalhesView> {
  @override
  Widget build(BuildContext context) {
    //
    // Receber os dados que foram enviados por argumento
    //
    final int idContato = ModalRoute.of(context)!.settings.arguments as int;

    //
    // TO-DO: Retornar o contato a partir do ID
    //
    var contato;

    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple.shade900,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.purple.shade50,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            exibirCampoTexto('Nome', contato.nome),
            exibirCampoTexto('Email', contato.email),
            exibirCampoTexto('Telefone', contato.telefone),
            SizedBox(height: 30),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.purple.shade900,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                //
                // TO-DO: Remover o contato
                //

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Contato removido com sucesso.')),
                );
                Navigator.pushReplacementNamed(context, 'principal');
              },
              child: Text('remover'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                foregroundColor: Colors.purple.shade900,
                backgroundColor: Colors.purple.shade50,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('voltar'),
            ),
          ],
        ),
      ),
    );
  }

  exibirCampoTexto(label, texto) {
    return ListTile(
      title: Text(label, style: TextStyle(fontSize: 12)),
      subtitle: Text(texto, style: TextStyle(fontSize: 22)),
    );
  }
}
