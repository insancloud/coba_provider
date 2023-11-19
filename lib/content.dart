import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertest/person.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Text(context.watch<Person>().name ?? "");
  }
}