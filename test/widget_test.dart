// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:laba15/main.dart';

void main() {
  testWidgets('FloatingActionButton has correct icon', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.widgetWithIcon(FloatingActionButton, Icons.pets), findsOneWidget);

  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {

    await tester.pumpWidget(const MyApp());


    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);


    await tester.tap(find.byIcon(Icons.pets));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('7'), findsOneWidget);
  });

  test('Function y = x / (x^2 - 4) calculates correctly', () {
    final calculator = FunctionCalculator();

    expect(calculator.calculate(3), closeTo(3 / 5, 0.0001));
    expect(calculator.calculate(5), closeTo(5 / 21, 0.0001));

    expect(() => calculator.calculate(2), throwsArgumentError);
    expect(() => calculator.calculate(-2), throwsArgumentError);
  });

  testWidgets('Home page displays correct title text', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text("CS-31: Andrij's last Flutter App"), findsOneWidget);
  });
}
