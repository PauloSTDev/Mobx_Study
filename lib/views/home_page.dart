import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_study/controller/contact/contact.dart';
import 'package:mobx_study/controller/counter/counter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // Instantiate the store
  final counter = Counter();
  final contact = Contact();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobx Flutter",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            // Wrapping in the Observer will automatically re-render on changes to counter.value
            child: Observer(
              builder: (_) => Text("${counter.value}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ),
          Observer(
            builder: (_) => Text(
              contact.fullName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    // Call action of the Instantiated
                    onPressed: () => counter.increment(),
                    child: const Text(
                      "Adiciona",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    // Call action of the Instantiated
                    onPressed: () => counter.reset(),
                    child: const Text(
                      "Zerar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    // Call action of the Instantiated
                    onPressed: () => counter.decrement(),
                    child: const Text(
                      "Remove",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => contact.first = "Ricardo",
          child: const Icon(Icons.change_circle)),
    );
  }
}
