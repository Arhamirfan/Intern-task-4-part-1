import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task4_part1/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Intern task 4'),
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: bodyColumnData(),
        ),
      ),
    );
  }
}

class bodyColumnData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        full_container(diff_colours[0], 'Column 1'), //single row here
        Row(
          children: [
            Expanded(
                child: half_container(
                    diff_colours[1], 'column 2 row 1') // code here
                ),
            Expanded(
              child:
                  half_container(diff_colours[2], 'column 2 row 2'), //code here
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: half_container(
                    diff_colours[3], 'column 3 row 1') //code here
                ),
            Expanded(
                child: half_container(
                    diff_colours[4], 'column 3 row 2') //code here
                )
          ],
        ),
        full_container(diff_colours[5], 'Column 4') //single row here
      ],
    );
  }
}
