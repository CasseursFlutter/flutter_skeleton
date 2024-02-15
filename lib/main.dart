// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_skeleton/app.dart';
import 'package:flutter_skeleton/i18n/translations.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  runApp(
    TranslationProvider(
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}
