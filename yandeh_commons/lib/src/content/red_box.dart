// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:yandeh_commons/yandeh_commons.dart';

class RedBox extends StatefulWidget {
  const RedBox({Key? key}) : super(key: key);
  @override
  _RedBoxState createState() => _RedBoxState();
}

class _RedBoxState extends State<RedBox> {
  @override
  Widget build(BuildContext context) {
    final caption = YandehDomais.of(context).data['BoxCaption'] ?? '';
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Came from BlueBox:'),
              subtitle: Text(caption),
            ),
          ],
        ),
      ),
    );
  }
}
