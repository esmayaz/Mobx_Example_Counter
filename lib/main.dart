import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter.dart'; // Import the Counter

final counter = Counter(); // Instantiate the store

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Counter'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Wrapping in the Observer will automatically re-render on changes to counter.value
            Expanded(flex: 20, child: Container()),
            Expanded(
              flex: 10,
              child: Observer(
                builder: (_) => Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            Expanded(flex: 13, child: Container()),
            Expanded(
              flex: 5,
              child: Row(children: [
                Spacer(),
                Expanded(
                  flex: 5,
                  child: FloatingActionButton(
                    onPressed: counter.decrement,
                    tooltip: 'decrement',
                    child: Icon(Icons.remove),
                  ),
                ),
                Expanded(
                  flex: 28,
                  child: Container(),
                ),
                Expanded(
                  flex: 5,
                  child: FloatingActionButton(
                    onPressed: counter.increment,
                    tooltip: 'Increment',
                    child: Icon(Icons.add),
                  ),
                ),
                Spacer(),
              ]),
              
            ),
            Spacer(),
           
          ],
        ),
      ),
    );
  }
}
