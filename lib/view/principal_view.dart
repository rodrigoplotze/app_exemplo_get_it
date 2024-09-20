import 'package:flutter/material.dart';


class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple.shade900,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 30),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'inserir');
            },
            icon: Icon(Icons.add, color: Colors.white),
          ),          
        ],
        
      ),
      backgroundColor: Colors.purple.shade50,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          //
          // TO-DO: Indicar o tamanho da lista
          //
          itemCount: 0,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                //
                // TO-DO: Nome do contato
                //
                title: Text('', style: TextStyle(fontSize: 22)),

                //
                // TO-DO: Email do contato
                //
                subtitle: Text(
                  '',
                  style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                ),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, 'detalhes', arguments: index);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
