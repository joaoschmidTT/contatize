import 'package:contatize/components/list_item.dart';
import 'package:contatize/repository/contact_repository.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    late Widget widget;

    return FutureBuilder(
      future: ContactRepository.findAll(),
      builder: (_, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          widget = const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasData && snapshot.data!.isEmpty) {
          widget = const Center(
            child: Text('Não existem contatos cadastrados!!!'),
          );
        } else {
          widget = ListView.separated(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => ListItem(contact: snapshot.data![index]),
            separatorBuilder: (_, index) => SizedBox(height: 8),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text("Meus contatos"),
          ),
          body: widget,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/new");
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
