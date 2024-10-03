import 'package:contatize/model/contact.dart';
import 'package:contatize/repository/contact_repository.dart';
import 'package:flutter/material.dart';
import 'package:contatize/screens/home/home_page.dart'; // Certifique-se de que o caminho está correto
import 'package:contatize/shared/custom_text_field.dart';
import 'package:flutter_masked_text3/flutter_masked_text3.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = MaskedTextController(mask: "+00 00 00000-0000");

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

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
              CustomTextField(
                label: 'Nome',
                inputType: TextInputType.text,
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'O nome não pode ficar em branco';
                  }
                  return null;
                },
              ),
              CustomTextField(
                label: 'Telefone',
                inputType: TextInputType.phone,
                isPassword: false,
                textInputAction: TextInputAction.done,
                controller: _phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'O número de telefone não pode ficar em branco';
                  } else if (value.length != 17) {
                    return 'O número de telefone é inválido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20), // Espaço entre os campos e o botão
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final contact = Contact(
                      name: _nameController.text,
                      phone: _phoneController.text,
                    );
                    contact.id = await ContactRepository.insert(contact.toMap());
                    SnackBar snackBar;
                    if (contact.id != 0) {
                      snackBar = SnackBar(
                          content: Text(
                              '${contact.name} cadastrado com sucesso!'));
                    } else {
                      snackBar = SnackBar(
                          content: Text(
                              'Lamento, não foi possível cadastrar o contato ${contact.name}!'));
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
