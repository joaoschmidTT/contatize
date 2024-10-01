import 'package:contatize/screens/create/create_page.dart';
import 'package:contatize/screens/edit/edit_page.dart';
import 'package:contatize/theme.dart';
import 'package:flutter/material.dart';
import 'screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MaterialTheme(Theme.of(context).textTheme).light(),
      darkTheme: MaterialTheme(Theme.of(context).textTheme).dark(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/edit': (context) => const EditPage(),
        '/create': (context) => CreatePage(),
        
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
