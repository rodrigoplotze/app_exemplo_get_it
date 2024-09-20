import '../model/contato.dart';

class ContatoService {
  List<Contato> contatos = [];

  void adicionarContato(Contato contato) {
    contatos.add(contato);
  }

  void removerContato(index) {
    contatos.removeAt(index);
  }

  Contato retornarContato(id){
    return contatos[id];
  }

}
