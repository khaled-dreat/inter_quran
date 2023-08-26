import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:international_Quran/providers/app_settings_provider.dart';
import 'package:international_Quran/providers/bookmark_provider.dart';
import 'package:international_Quran/providers/favorites_provider.dart';
import 'package:international_Quran/providers/player_provider.dart';
import 'package:international_Quran/providers/quran_provider.dart';
import 'package:international_Quran/providers/search_provider.dart';
import 'package:international_Quran/screens/bottom_nav_bar_screen.dart';
import 'package:international_Quran/themes/theme.dart';

import 'main_builder.dart';

Future<void> main() async {
  await GetStorage.init('AliSliman');
  WidgetsFlutterBinding.ensureInitialized();
  //debugRepaintRainbowEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: Consumer<AppSettingsProvider>(
        builder: (context, appSettingProvider, child) {
          return MaterialApp(
            title: "Ali Sliman Qur'an",
            debugShowCheckedModeBanner: false,
            locale: appSettingProvider.appLocale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: MainBuilder.builder,
            localeResolutionCallback:
                appSettingProvider.localeResolutionCallback,
            theme: theme,
            home: const BottomNavBarScreen(),
          );
        },
      ),
    );
  }

  /// Create App Global Providers
  List<SingleChildWidget> get providers {
    return [
      ChangeNotifierProvider(create: (_) => AppSettingsProvider()),
      ChangeNotifierProvider(create: (_) => QuranProvider(), lazy: false),
      ChangeNotifierProvider(create: (_) => PlayerProvider()),
      ChangeNotifierProvider(create: (_) => FavoritesProvider()),
      ChangeNotifierProvider(create: (_) => BookmarkProvider()),
      ChangeNotifierProvider(create: (_) => SearchProvider(_)),
    ];
  }
}
