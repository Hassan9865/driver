import 'package:driver/app/app.locator.dart';
import 'package:driver/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewmodel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateTosettingview() {
    _navigationService.navigateToSettingView();
  }
}
