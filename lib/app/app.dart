import 'package:driver/services/lang_service/lang_service.dart';
import 'package:driver/view/bottom_navBar/bottom_navBar_view.dart';
import 'package:driver/view/setting%20view/setting_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: BottomNavbarView, initial: true),
    MaterialRoute(page: SettingView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: LangService),
  ],
)
class App {}
