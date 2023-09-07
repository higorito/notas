import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notepad_mobile/src/shared/style/app_style.dart';

// ignore: non_constant_identifier_names
Widget Nota(Function()? onTap, QueryDocumentSnapshot doc){
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppStyle.corCard[doc["id_cor"]], 
        borderRadius: BorderRadius.circular(12),
        
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doc["titulo_nota"],style: AppStyle.titulo,),
            const SizedBox(height: 4,),
            Text(doc["data_criacao"],style: AppStyle.dataTitulo,),
            const SizedBox(height: 8,),
            Text(doc["conteudo"],style: AppStyle.content, overflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    ),
  );
}