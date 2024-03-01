import 'dart:developer';

import 'package:flutter/material.dart';

import '../smurdle/smurdle.dart';

import '../smurdle/views/splash_screen.dart';

final Dictionary dictionary = Dictionary();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool loading = true;
  List<String> validWords = [
    "ogaro",
    "erick",
    "obara",
  ];

  // get words
  getWords() async {
    setState(() {
      loading = true;
    });
    try {
      final words = await dictionary.readWords();
      setState(() {
        validWords = words;
      });
    } catch (e) {
      log(e.toString());
    }
    setState(() {
      loading = false;
    });

    log(validWords.first.toString());
  }

  @override
  void initState() {
    super.initState();
    getWords();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smurdle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: loading
          ? const SplashScreen()
          : SmurdleScreen(validWords: validWords),
    );
  }
}
