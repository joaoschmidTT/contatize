import 'dart:developer';

import 'package:contatize/model/contact.dart';
import 'package:flutter/material.dart';
import 'package:slideable/slideable.dart';

class ListItem extends StatelessWidget {
  final Contact contact;
  const ListItem({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
      return Slideable(
        items: <ActionItems>[
          ActionItems(
            icon: const Icon(
              Icons.edit,
              color: Colors.orange,
            ),
            onPress: () {},
            backgroudColor: Colors.transparent,
          ),
          ActionItems(
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPress: () {},
            backgroudColor: Colors.transparent,
          ),
        ],
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListElement(contact: contact),
        ),
      );
  }
}

class ListElement extends StatelessWidget {
  const ListElement({
    super.key,
    required this.contact,
  });

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: Text(
              contact.name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                contact.phone,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
