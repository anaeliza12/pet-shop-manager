import 'package:cp/domain/animal.dart';
import 'package:cp/screens/animals/animal.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../util/snippets.dart';

class AnimalCreateScreen extends StatefulWidget {
  const AnimalCreateScreen({super.key})

 @override
  State<AnimalCreateScreen> createState() => _AnimalCreateScreenState();
}

class _AnimalCreateScreenState extends State<AnimalCreateScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _racaController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  late AnimalController _animalController;

  @override
  void initState() {
    _animalController = AnimalController();
    super.initState();
  }

  _onPressed() {
    final animal = Animal(
        name: _nameController.text,
        raca: _racaController.text,
        idade: _idadeController.text
    );
    _animalController.saveAnimal(animal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Pets"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _nameController,
              decoration: inputDecoration(label: "Informe o nome"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _racaController,
              decoration: inputDecoration(label: "Informe a raça"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _idadeController,
              decoration: inputDecoration(label: "Informe a idade"),
            ),
          ),
          ElevatedButton(onPressed: _onPressed, child: const Text("Entrar")),

        ],
      ),

    );
  }
}