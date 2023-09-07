import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/style/app_style.dart';

class DetalhesNotas extends StatefulWidget {
  DetalhesNotas( this.doc ,  {Key? key} )  : super(key: key);

  QueryDocumentSnapshot doc;

  @override
  State<DetalhesNotas> createState() => _DetalhesNotasState();
}

class _DetalhesNotasState extends State<DetalhesNotas> {
  
  @override
  Widget build(BuildContext context) {
    int idCor = widget.doc['id_cor'];
    //int id_cor_prio = widget.doc["id_cor"];  //fazer a logica de prioridade depois
    return Scaffold(
      backgroundColor: AppStyle.corCard[idCor],
      appBar: AppBar(
        backgroundColor: AppStyle.corCard[idCor],
        title: Text(widget.doc["titulo_nota"], style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 30),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.doc["titulo_nota"],style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),),
            const SizedBox(height: 4,),
            Text(widget.doc["data_criacao"],style: GoogleFonts.roboto( fontSize: 12, color: Colors.white),),
            const SizedBox(height: 16,),
            Text(widget.doc["conteudo"],style: GoogleFonts.roboto( fontSize: 24, color: Colors.white),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async{
          FirebaseFirestore.instance.collection('notas').doc(widget.doc.id).delete()
          .then((value) => Navigator.pop(context)).catchError((erro) => print("erro ao deletar") );
        },
        label: const Text("Deletar"),
        icon: const Icon(Icons.delete),
        backgroundColor: Colors.red,
      )
    );
  }
}