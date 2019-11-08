import 'package:flutter/material.dart';
import 'package:flutter_firebase/store/index.dart' show Store, CounterModel;

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('second page rebuild');
    return Scaffold(
      appBar: AppBar(title: Text('Second'),),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('+'),
              onPressed: () {
                Store.value<CounterModel>(context).increment();
              },
            ),
            Builder(
              builder: (context) {
                print('second page counter widget rebuild');
                return Text(
                  'second page: ${Store.value<CounterModel>(context).count}'
                );
              },
            ),
            RaisedButton(
              child: Text('-'),
              onPressed: () {
                Store.value<CounterModel>(context).decrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}