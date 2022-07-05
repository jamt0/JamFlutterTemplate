// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:telling/models/profile_model.dart';

void main() {
  test("Probando parsear profile", () async {
    final profileFile = File('test/resources/profile.json');
    final profileStr = await profileFile.readAsString();
    final profileJson = jsonDecode(profileStr);
    ProfileModel.fromMap(profileJson);
  });
}
