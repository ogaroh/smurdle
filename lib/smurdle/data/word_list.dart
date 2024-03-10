import 'dart:developer';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

// word dictionary
const wordsFile = 'assets/sources/words.txt';

class Dictionary {
  Future<List<String>> readWords() async {
    try {
      String loadedString =
          await rootBundle.loadString('assets/sources/words.txt');
      List<String> result = loadedString.split('\n');

      return result;
    } catch (e) {
      log(e.toString());
      // If encountering an error, return harcoded words
      return [
        "erick",
        "obara",
        "ogaro",
      ];
    }
  }
}
