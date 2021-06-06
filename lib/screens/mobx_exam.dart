import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_state_management/models/mobx_model.dart';

class MobXExam extends StatefulWidget {
  @override
  _MobXExamState createState() => _MobXExamState();
}

class _MobXExamState extends State<MobXExam> {
  final counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Example'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () =>
              Navigator.popUntil(context, (route) => route.isFirst),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) => Text(
                '${counter.value}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            MaterialButton(
              child: Text('Increment'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () => counter.increment(),
            ),
            MaterialButton(
              child: Text('Decrease'),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () => counter.decrease(),
            ),
          ],
        ),
      ),
    );
  }
}
