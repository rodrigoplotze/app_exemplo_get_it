import 'package:flutter/material.dart';


class InserirView extends StatefulWidget {
  const InserirView({super.key});

  @override
  State<InserirView> createState() => _InserirViewState();
}

class _InserirViewState extends State<InserirView> {
  var formKey = GlobalKey<FormState>();
  var ctrlNome = TextEditingController();
  var ctrlEmail = TextEditingController();
  var ctrlTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple.shade900,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.purple.shade50,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: ListView(children: [
            criarCampoTexto('Nome', ctrlNome),
            criarCampoTexto('Email', ctrlEmail),
            criarCampoTexto('Telefone', ctrlTelefone),
            SizedBox(height: 40),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.purple.shade900,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                //
                // TO-DO: Adicionar um novo contato
                //

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Contato adicionado com sucesso.')),
                );
                Navigator.pushReplacementNamed(context, 'principal');
              },
              child: Text('salvar'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                foregroundColor: Colors.purple.shade900,
                backgroundColor: Colors.purple.shade50,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'principal');
              },
              child: Text('voltar'),
            ),
          ]),
        ),
      ),
    );
  }

  criarCampoTexto(label, ctrl) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: TextFormField(
        controller: ctrl,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
