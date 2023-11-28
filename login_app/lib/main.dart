import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/app.dart';
import 'package:login_app/firebase_options.dart';
import 'package:login_app/simple_block_observer.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
	Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FireBaseUserRepo()));
}