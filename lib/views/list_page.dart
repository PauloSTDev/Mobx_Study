import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
      ),
      body: Observer(builder: (_) {
        return SizedBox(
          width: 1024,
          height: 512,
          child: ChildWidget(
            list: Controller()
                .observableList
                .toList(), // Mobx will detect mutations to observableList
          ),
        );
      }),
    );
  }
}

class Controller {
  final ObservableList<String> observableList =
      ObservableList<String>.of(["Item 1", "Item 2", "Item 3"]);
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({super.key, required this.list});

  /// Don't use ObservableList here otherwise the context for parent widget
  /// observer will change and it will not track these mutations.

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 112,
            height: 48,
            child: ListTile(
              title: Text(list[index]),
            ),
          );
        });
  }
}
