import 'package:flutter/material.dart';
import 'package:contatize/screens/home/home_page.dart'; // Certifique-se de que o caminho está correto
import 'package:contatize/shared/custom_text_field.dart';
import 'package:flutter_masked_text3/flutter_masked_text3.dart';
import 'package:contatize/model/contact.dart'; // Supondo que você tenha um modelo de contato

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
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
    // Receber os dados do contato a ser editado
    final Contact contact = ModalRoute.of(context)!.settings.arguments as Contact;

    // Preencher os controladores com os dados do contato
    _nameController.text = contact.name;
    _phoneController.text = contact.phone;

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
              ),
              CustomTextField(
                label: 'Telefone',
                inputType: TextInputType.phone,
                isPassword: false,
                textInputAction: TextInputAction.done,
                controller: _phoneController,
              ),
              const SizedBox(height: 20), // Espaço entre os campos e os botões
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Lógica para salvar as alterações
                        // Aqui você deve implementar a lógica para atualizar o contato
                        
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      }
                    },
                    child: const Text('Salvar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para excluir o contato
                      // Aqui você deve implementar a lógica para excluir o contato

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text('Excluir'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
