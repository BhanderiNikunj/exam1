import 'package:exam/DetailAddPage.dart';
import 'package:exam/HomePage.dart';
import 'package:flutter/material.dart';

import 'ModalData.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Home(),
        'add':(context) => Add(),
      },
    ),
  );
}
  class Global {

  static List<Modal> all = [];
}

