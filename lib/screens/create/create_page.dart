import 'package:contatize/model/contact.dart';
import 'package:contatize/repository/contact_repository.dart';
import 'package:flutter/material.dart';
import 'package:contatize/screens/home/home_page.dart'; // Certifique-se de que o caminho está correto
import 'package:contatize/shared/custom_text_field.dart';
import 'package:flutter_masked_text3/flutter_masked_text3.dart';

class CreatePage extends StatelessWidget {
  CreatePage({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = MaskedTextController(mask: "+00 00 00000-0000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          margin: const EdgeInsets.only(top: 16),
          child: Center(
            child: Image.asset(
              'img/avatar.png',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        toolbarHeight: 120,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextField(
                label: 'Nome',
                inputType: TextInputType.text,
              ),
              const CustomTextField(
                label: 'Telefone',
                inputType: TextInputType.phone,
                isPassword: false,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 20), // Espaço entre os campos e o botão
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final contact = Contact(
                      name: _nameController.text,
                      phone: _phoneController.text,
                    );
                    contact.id =
                        await ContactRepository.insert(contact.toMap());
                    SnackBar snackBar;
                    if (contact.id != 0) {
                      snackBar = SnackBar(
                          content: Text(
                              '${contact.name} cadastrado com sucesso!!!'));
                    } else {
                      snackBar = SnackBar(
                          content: Text(
                              'Lamento não foi possível cadastrar o contato ${contact.name} !!!'));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
