import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/CounterController.dart';

class UserView extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => UserView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ユーザー'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'user',
            ),
            Consumer(
              builder: (context, watch, child) {
                return Text('${watch(counterProvider).count}');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(counterProvider.notifier).increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add_alert),
      ),
    );
  }
}
