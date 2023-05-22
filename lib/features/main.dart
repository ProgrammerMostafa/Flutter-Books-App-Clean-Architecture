import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../core/services/service_locator.dart';
import 'app.dart';
import 'my_bloc_observer.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  //////////////////////////////////////////
  Bloc.observer = MyBlocObserver();
  //////////////////////////////////////////
  await serviceLocatorInit();
  ///////////////////////////
  runApp(const BooksApp());
}


