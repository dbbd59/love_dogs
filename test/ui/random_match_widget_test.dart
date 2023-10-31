import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:love_dogs/core/repo/theme_repo.dart';
import 'package:love_dogs/features/random_match/model/random_match_dog.dart';
import 'package:love_dogs/features/random_match/view/pages/random_match_page.dart';
import 'package:network_image_mock/network_image_mock.dart';

Future<void> main() async {
  group('RandomMatchDog View', () {
    GoldenToolkit.runWithConfiguration(
      () => {
        testGoldens(
          'RandomMatchDog Page',
          (tester) async {
            await mockNetworkImagesFor(() async {
              final builder = getDefaultBuilder(
                const Scaffold(
                  body: RandomMatchPage(
                    dog: RandomMatchDog(
                      breed: 'breed',
                      distance: 12,
                      imageUrl: 'imageUrl',
                      name: 'name',
                      potentialMatch: true,
                    ),
                    filter: null,
                  ),
                ),
              );
              await tester.pumpDeviceBuilder(
                builder,
                wrapper: materialWrapper(),
              );
              await screenMatchesGolden(tester, 'random_match_dog_widget');

              final builderDark = getDefaultBuilder(
                const Scaffold(
                  body: RandomMatchPage(
                    dog: RandomMatchDog(
                      breed: 'breed',
                      distance: 12,
                      imageUrl: 'imageUrl',
                      name: 'name',
                      potentialMatch: true,
                    ),
                    filter: null,
                  ),
                ),
                isDark: true,
              );
              await tester.pumpDeviceBuilder(
                builderDark,
                wrapper: materialWrapperDark(),
              );
              await screenMatchesGolden(tester, 'random_match_dog_widget_dark');
            });
          },
        ),
        testGoldens(
          'Cart Page cash',
          (tester) async {
            await mockNetworkImagesFor(() async {
              final builder = getDefaultBuilder(
                const Scaffold(
                  body: RandomMatchPage(
                    dog: RandomMatchDog(
                      breed: 'breed',
                      distance: 12,
                      imageUrl: 'imageUrl',
                      name: 'name',
                      potentialMatch: true,
                    ),
                    filter: 'breed',
                  ),
                ),
              );
              await tester.pumpDeviceBuilder(
                builder,
                wrapper: materialWrapper(),
              );
              await screenMatchesGolden(
                tester,
                'random_match_dog_with_filter_widget',
              );
            });
          },
        ),
      },
      config: GoldenToolkit.configuration,
    );
  });
}

DeviceBuilder getDefaultBuilder(
  Widget child, {
  bool isDark = false,
}) {
  loadAppFonts();

  return DeviceBuilder()
    ..overrideDevicesForAllScenarios(
      devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletPortrait,
        Device.tabletLandscape,
      ],
    )
    ..addScenario(
      widget: child,
    );
}

WidgetWrapper materialWrapper() {
  return materialAppWrapper(
    theme: ThemeRepo().lightTheme,
  );
}

WidgetWrapper materialWrapperDark() {
  return materialAppWrapper(
    theme: ThemeRepo().darkTheme,
  );
}
