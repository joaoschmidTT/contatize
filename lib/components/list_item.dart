import 'package:flutter/material.dart';
import 'package:contatize/model/contact.dart';
import 'package:contatize/screens/edit/edit_page.dart'; // Caminho para a EditPage

class ListItem extends StatelessWidget {
  final Contact contact;
  const ListItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Navegar para a página de criação de contato
            },
          ),
        ],
      ),
      body: ListTile(
        title: Text(contact.name), // Exibe o nome do contato
        subtitle: Text(contact.phone), // Exibe o telefone do contato
        trailing: IconButton(
          icon: const Icon(Icons.edit), // Ícone de edição
          onPressed: () {
            // Navegar para a EditPage e passar o contato
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EditPage(),
                settings:
                    RouteSettings(arguments: contact), // Passando o contato
              ),
            );
          },
        ),
      ),
    );
  }
}
