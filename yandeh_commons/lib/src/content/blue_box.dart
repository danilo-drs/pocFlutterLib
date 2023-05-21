import 'package:flutter/material.dart';
import 'package:yandeh_commons/yandeh_commons.dart';

class BlueBox extends StatefulWidget {
  const BlueBox({
    Key? key,
  }) : super(key: key);

  @override
  BlueBoxState createState() => BlueBoxState();
}

class BlueBoxState extends State<BlueBox> {
  BlueBoxState();

  void setText(String text) {
    setState(() {
      YandehDomais.of(context).setDomainData('BoxCaption', text);
    });
  }

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite aqui',
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => setText(_controller.text),
              child: const Text('Imprimir texto'),
            ),
          ],
        ),
      ),
    );
  }
}
