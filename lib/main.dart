import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/details.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => const Home(),
    '/details': (context) => const Details(),
  },
));
