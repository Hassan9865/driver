import 'package:driver/app/app.locator.dart';
import 'package:driver/app/app.router.dart';
import 'package:driver/services/lang_service/lang_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final langService = locator<LangService>();

    return StreamBuilder<Locale>(
      stream: langService.localeStream, // Listen to locale changes
      initialData: langService.locale, // Set the initial locale
      builder: (context, snapshot) {
        return MaterialApp(
          locale: snapshot.data,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorObservers: [StackedService.routeObserver],
        );
      },
    );
  }
}
