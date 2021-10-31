import 'package:flutter/material.dart';
import 'package:flutter_freezed/src/model/person.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget renderText(String title, String text) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final person1 = Person(id: 1, name: 'jyryuitpro', age: 33);
    final person2 = Person(id: 1, name: 'jyryuitpro', age: 33);

    person1.hello();

    return Scaffold(
      appBar: AppBar(
        title: Text('freezed'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              renderText('person1.id', person1.id.toString()),
              renderText('person1.name', person1.name),
              renderText('person1.age', person1.age.toString()),
              renderText('toString()', person1.toString()),
              renderText('toJson()', person1.toJson().toString()),
              renderText('==', (person1 == person2).toString()),
              renderText('nameLength', person1.nameLength.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
