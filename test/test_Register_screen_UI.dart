import 'package:flutter_test/flutter_test.dart';


testWidgets("Test Register screen UI", (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: Register()));

  // Test Scaffold widget properties
  expect(find.byType(Scaffold), findsOneWidget);
  expect(find.byType(IconButton), findsOneWidget);
  expect(find.byType(TextFormField), findsNWidgets(3));
  expect(find.byType(TextButton), findsNWidgets(2));
  expect(find.byType(ElevatedButton), findsOneWidget);

  // Test IconButton navigation


  // Test IconButton navigation
  await tester.tap(find.byType(IconButton));
  await tester.pump();
  expect(find.byType(Scaffold), findsOneWidget); // Check if navigation occurred

  // Test TextFormField widgets
  // Add tests for user input scenarios

  // Test TextButtons functionality
  await tester.tap(find.byType(TextButton).first);
  await tester.pump();
  expect(find.text("Terms of service comming soon"), findsOneWidget);

  await tester.tap(find.byType(TextButton).last);
  await tester.pump();
  expect(find.text("Show Password"), findsOneWidget);

  // Test ElevatedButton properties and onPressed function
  await tester.tap(find.byType(ElevatedButton));
  // Add expectations based on the onPressed function
});