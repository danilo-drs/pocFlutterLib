// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:yandeh_commons/yandeh_commons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final yandehModel = YandehModel();

  @override
  Widget build(BuildContext context) {
    return YandehDomais(
      yandehModel: yandehModel,
      child: MaterialApp(
          title: 'Playground',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          home: Scaffold(
            appBar: AppBar(title: const Text('Yandeh lib Sample')),
            body: ParentWidget(),
          )),
    );
  }
}

class ParentWidget extends StatelessWidget {
  ParentWidget({super.key});

  final localmodel = LocalModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RedBox(),
        const BlueBox(),
        LocalDomais(
          localModel: localmodel,
          child: const Column(
            children: [
              RedBoxLocal(),
              BlueBoxLocal(),
            ],
          ),
        ),
      ],
    );
  }
}
