import 'package:flutter/material.dart';

import '../smurdle/smurdle.dart';
import 'package:games_services/games_services.dart';

final Dictionary dictionary = Dictionary();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    GameAuth.signIn();
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
      home: const SmurdleScreen(),
    );
  }
}
