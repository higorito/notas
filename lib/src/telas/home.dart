import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notepad_mobile/src/telas/detalhes_nota.dart';
import 'package:notepad_mobile/src/telas/editar_notas.dart';
import 'package:notepad_mobile/src/widgets/nota.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotePad", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 30), ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Suas notas recentes", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 24),),
          
            const SizedBox(height: 12,),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('notas').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  //checar a conexao com o firebase
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return const Center(child: CircularProgressIndicator());
                  }
                  if(snapshot.hasData){
                    return GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      children: 
                        snapshot.data!.docs.map((nota) => Nota((){ 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesNotas(nota) ));
                         }, nota)).toList(),
                          
                      );
                  }
                
                 return const Row(crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                      Icon(Icons.post_add_outlined, ),
                      Text("Não tem notas salvas"),
                   ],
                 );
            
                } ,
              ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const EditarNotas() ) );          
        },
        label: const Text("Nova Nota"),
        icon: const Icon(Icons.post_add_outlined),

      ),

    );
  }
}