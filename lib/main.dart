import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import "app/app.dart";

import 'smurdle/data/word_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // get dictionary
  final Directory dir = await getApplicationDocumentsDirectory();
  final String path = dir.path;
  await rootBundle.loadString("$path/test.txt");

  return runApp(const App());
}
