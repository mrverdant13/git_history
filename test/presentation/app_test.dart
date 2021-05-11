import 'package:flutter_app_template/core/flavors.dart';
import 'package:flutter_app_template/presentation/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  group(
    '''

GIVEN an app''',
    () {
      // Service locator
      late GetIt getIt;

      setUp(
        () {
          getIt = GetIt.instance;

          getIt.registerFactory<Flavor>(
            () => Flavor.dev,
          );
        },
      );

      tearDown(
        () {
          getIt.reset();
        },
      );

      testWidgets(
        '''

WHEN the app is launched
THEN the app is rendered
''',
        (tester) async {
          // ARRANGE

          // ACT
          await tester.pumpWidget(const MyApp());

          // ASSERT
          expect(find.byType(MyApp), findsOneWidget);
        },
      );
    },
  );
}
