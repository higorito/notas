
import 'package:flutter/material.dart';
import 'package:notepad_mobile/src/shared/themes/temas.dart';
import 'package:notepad_mobile/src/telas/home.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotePad',
      debugShowCheckedModeBanner: false,
      
      themeMode: ThemeMode.light,
      theme: lightTheme,   //criei um arquivo separado pra organizar os temas, ai so chamei a variavel aqui
      darkTheme: darkTheme,
      
      home: const Home(),
      //rotas nomeadas pra testar
      // initialRoute: "/splash",
      // routes: {
      //   "/splash": (context) => const Splash(),
      //   "/home": (context) => const Home(),
      //   "/pgTeste": (context) => const PgTeste(),
      //   "/lista": (context) => const ListaProd(),
      // },
    );
  }
}