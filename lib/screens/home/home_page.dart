import 'dart:developer';

import 'package:contatize/components/list_item.dart';
import 'package:contatize/repository/contact_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Pesquisar',
                        filled: true,
                        fillColor:
                            Theme.of(context).colorScheme.secondaryContainer,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/create',
                      );
                    },
                  ),
                ],
              ),
              // FutureBuilder
              FutureBuilder(
                future: ContactRepository.findAll(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    widget = const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    widget = const Center(
                      child: Text('Não existem contatos cadastrados!!!'),
                    );
                  } else {
                    widget = Expanded(
                      child: ListView.separated(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) =>
                            ListItem(contact: snapshot.data![index]),
                        separatorBuilder: (_, index) =>
                            const SizedBox(height: 8),
                      ),
                    );
                  }
                  return widget;
                },
              )
            ],
          ),
        ),
    );
  }
}
