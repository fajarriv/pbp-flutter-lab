import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program Counter'),
      ),
      drawer: drawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_counter % 2 == 0)
              const Text('GENAP', style: TextStyle(color: Colors.redAccent))
            else
              const Text('GANJIL', style: TextStyle(color: Colors.blueAccent)),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Visibility(
              visible: _counter != 0,
              child: FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
