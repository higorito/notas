import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notepad_mobile/app_widget.dart';
// Import the generated file
import 'firebase_options.dart';

Future<void> main()async {
 
  //metodo correto de inicializar o firebase
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const AppWidget());
}

