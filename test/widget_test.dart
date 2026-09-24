import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quiz/main_page.dart';

void main() {
  testWidgets('Quiz starts on the landing page', (WidgetTester tester) async {
    await tester.pumpWidget(const QuizMain());

    expect(find.text('Learn Flutter the fun way!'), findsOneWidget);
    expect(find.text('Start Quiz'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_right_alt), findsOneWidget);
  });
}
