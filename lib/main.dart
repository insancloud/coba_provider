import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/content.dart';
import 'package:providertest/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Person> getPerson() async {
    await Future.delayed(const Duration(seconds: 2));
    return Person(name: "Bondan");
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureProvider<Person>(
      initialData: Person(name: "Insan"),
      create: (_) => getPerson(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Flutter Provider"),
        ),
        body: Center(
          child: ContentPage(
            key: UniqueKey(),

          ),
        ),
      ),
    );
  }
}
