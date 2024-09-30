import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/my_app.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'firebase_options.dart';


Future<void> main() async {
  runApp(const MyApp());

//TODOS
  
//--add widgets bindings
final WidgetsBinding widgetsBinding =WidgetsFlutterBinding.ensureInitialized();

//-- initialized loacal GetX storage
await GetStorage.init();

//-- await native splash
FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

//-- initialize firebase
await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform).then(
  //--- Once firebase intialization is done related to any platform, the AuthenticationRepository decide the state of the app either user loged in or loged out and manage to show which screen first
  (FirebaseApp Value) => Get.put(AuthenticationRepository())
);

  //initialize authentication
}

