import 'package:stacked/stacked.dart';

class BottomNavbarViewmodel extends IndexTrackingViewModel {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  //   Widget _getViewForIndex(int index) {
  //   return PageTransitionSwitcher(
  //     duration: Duration(milliseconds: 300),
  //     transitionBuilder: (child, animation, secondaryAnimation) {
  //       return FadeTransition(
  //         opacity: animation,
  //         child: child,
  //       );
  //     },
  //     child: _getPageForIndex(index),
  //   );
  // }
}
