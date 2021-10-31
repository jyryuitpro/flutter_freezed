import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  // @Assert('name.length < 5', '이름의 길이는 5보다 작아야합니다.')
  factory Person({
    required int id,
    required String name,
    required int age,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Person._();

  get nameLength => this.name.length;

  void hello() {
    print('Hello jyryuitpro');
  }
}