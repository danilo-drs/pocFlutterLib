import 'package:flutter/material.dart';
import 'package:yandeh_commons/yandeh_commons.dart';

class BlueBoxLocal extends StatefulWidget {
  const BlueBoxLocal({
    Key? key,
  }) : super(key: key);

  @override
  BlueBoxLocalState createState() => BlueBoxLocalState();
}

class BlueBoxLocalState extends State<BlueBoxLocal> {
  BlueBoxLocalState();

  void setText(String text) {
    setState(() {
      LocalDomais.of(context).setDomainData('BoxCaption', text);
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

    // return Container(
    //   constraints: BoxConstraints.expand(
    //       height:
    //           Theme.of(context).textTheme.headlineMedium!.fontSize! + 200.0),
    //   padding: const EdgeInsets.all(8.0),
    //   color: Colors.blue[600],
    //   alignment: Alignment.center,
    //   child: TextButton(onPressed: setText, child: const Text('Clique Aqui')),
    // );
  }
}
