import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/services/service_locator.dart';
import 'app.dart';
import 'my_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //////////////////////////////////////////
  serviceLocatorInit();
  //////////////////////////////////////////
  Bloc.observer = MyBlocObserver();
  ///////////////////////////
  runApp(const BooksApp());
}
