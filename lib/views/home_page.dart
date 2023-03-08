import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_study/controller/counter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final counter = Counter();

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
            child: Observer(
              builder: (_) => Text("${counter.value}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
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
    );
  }
}
