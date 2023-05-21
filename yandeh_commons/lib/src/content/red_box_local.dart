// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:yandeh_commons/yandeh_commons.dart';

class RedBoxLocal extends StatefulWidget {
  const RedBoxLocal({Key? key}) : super(key: key);
  @override
  _RedBoxLocalState createState() => _RedBoxLocalState();
}

class _RedBoxLocalState extends State<RedBoxLocal> {
  @override
  Widget build(BuildContext context) {
    final caption = LocalDomais.of(context).data['BoxCaption'] ?? '';
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Came from BlueBox local:'),
              subtitle: Text(caption),
            ),
          ],
        ),
      ),
    );
  }
}
