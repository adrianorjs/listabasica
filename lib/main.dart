import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lista Dinâmica"),
        ),
        body: buildListView(),
      ),
    );
  }

  buildListView() {
    final itens = List<String>.generate(10000, (i) => "Item $i");

    return ListView.builder(
      itemCount: itens.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text('${itens[index]}'),
          onTap: () {
            debugPrint('Linha $index foi selecionada');
          },
        );
      },
    );
  }
}
