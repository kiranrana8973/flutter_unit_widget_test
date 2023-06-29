import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/view/arithmetic_view.dart';

void main() {
  testWidgets('add two numbers', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithmeticView(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).first, '1');
    await tester.enterText(find.byType(TextField).last, '2');

    // await tester.tap(find.byType(ElevatedButton).at(0));
    await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));
    await tester.pumpAndSettle();

    expect(find.text('Result: 3'), findsOneWidget);
  });

  testWidgets('subtract two numbers', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithmeticView(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).at(0), '1');
    await tester.enterText(find.byType(TextField).at(1), '20');

    await tester.tap(find.byType(ElevatedButton).at(1));
    await tester.pumpAndSettle();

    expect(find.text('Result: -1'), findsOneWidget);
  });

  testWidgets('arithmetic view ...', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArithmeticView(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Arithmetic Views'), findsOneWidget);
  });
}
