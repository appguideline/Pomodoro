import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:pomodoro/app/modules/settings/settings_controller.dart';
import 'package:pomodoro/app/app_module.dart';

void main() {
  initModule(AppModule());
  SettingsController settings;

  setUp(() {
    settings = AppModule.to.get<SettingsController>();
  });

  group('SettingsController Test', () {
    test("First Test", () {
      expect(settings, isInstanceOf<SettingsController>());
    });

    test("Set Value", () {
      expect(settings.value, equals(0));
      settings.increment();
      expect(settings.value, equals(1));
    });
  });
}
