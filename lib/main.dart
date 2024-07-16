// ignore_for_file: public_member_api_docs, sort_constructors_first, overridden_fields, annotate_overrides



import 'package:flutter/material.dart';

import 'features/homes/presentation/pages/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
