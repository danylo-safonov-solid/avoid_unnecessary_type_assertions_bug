// ignore_for_file: public_member_api_docs, prefer_match_file_name, lines_longer_than_80_chars

class A {

}

class B extends A {

}

class C extends A {

}

void noLint() {
  final A a = B();
  // Unnecessary usage of the 'is' operator.dart(avoid_unnecessary_type_assertions)
  if (a is! C) return;
}

void lint() {
  final A a = B();
  if (a is C) return;
}
