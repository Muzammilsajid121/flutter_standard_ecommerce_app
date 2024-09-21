import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/my_app.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';


Future<void> main() async {
  runApp(const MyApp());

  //TODOS
  
  //add widgets bindings
  //initialized loacal storage
  //await native splash

//-- initialize firebase
await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform).then(
  //--- The AuthenticationRepository decide the state of the app either user loged in or loged out and manage to show which screen first
  (FirebaseApp Value) => Get.put(AuthenticationRepository())
);


  //initialize authentication
}

