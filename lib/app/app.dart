import 'package:flutter/material.dart';

import 'package:smurdle/smurdle/smurdle.dart';

class App extends StatelessWidget {
    const App({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'S',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
            home: const SmurdleScreen(),
        );
    }
}