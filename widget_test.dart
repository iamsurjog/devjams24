

import 'package:first_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// ignore: depend_on_referenced_packages

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the counter starts at 0.
    expect(find.text('0'), findsOneWidget); // Look for text '0'
    expect(find.text('1'), findsNothing);   // Ensure '1' is not found yet

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));  // Simulate a tap on the '+' button
    await tester.pump();  // Rebuild the widget after the state has changed

    // Verify that the counter has incremented to 1.
    expect(find.text('0'), findsNothing);   // Now '0' should not be found
    expect(find.text('1'), findsOneWidget); // Look for '1' after increment
  });
}
