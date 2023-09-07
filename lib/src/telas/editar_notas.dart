import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notepad_mobile/src/shared/style/app_style.dart';

class EditarNotas extends StatefulWidget {
  const EditarNotas({super.key});

  @override
  State<EditarNotas> createState() => _EditarNotasState();
}

class _EditarNotasState extends State<EditarNotas> {

  TextEditingController _tituloController = TextEditingController();
  TextEditingController _conteudoController = TextEditingController();

  String data = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    int id_cor  = Random().nextInt(AppStyle.corCard.length);
    
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Editar Notas"),
      ),
      body: Padding(padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(
              controller: _tituloController,
              decoration: const InputDecoration(
                labelText: "Titulo",
                
                hintText: "Digite o titulo da nota",
              ),
            ),
            const SizedBox(height: 6,),
            Text(data, style: AppStyle.dataTitulo,),
            const SizedBox(height: 18,),
            TextField(
              controller: _conteudoController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                labelText: "Conteudo",
                border: InputBorder.none,
                hintText: "Digite o conteudo da nota",
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()async{
            FirebaseFirestore.instance.collection('notas').add({
              'titulo_nota': _tituloController.text,
              'conteudo': _conteudoController.text,
              'data_criacao': data,
              'id_cor' : id_cor,
            })
            .then((value) => Navigator.pop(context)).catchError((error)=> print("falhou"));
        },
        label: const Text("Salvar"),
        icon: const Icon(Icons.save),
      ),
    );
  }
}