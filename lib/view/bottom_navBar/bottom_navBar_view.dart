import 'package:driver/view/booking/booking_view.dart';
import 'package:driver/view/bottom_navBar/bottom_navBar_viewModel.dart';
import 'package:driver/view/bottom_navBar/widget/SpotlightNavItem.dart';
import 'package:driver/view/home/home_view.dart';
import 'package:driver/view/my_account/my_account_view.dart';
import 'package:driver/view/track_driver/track_driver_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BottomNavbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavbarViewmodel>.reactive(
      viewModelBuilder: () => BottomNavbarViewmodel(),
      builder: (context, model, child) {
        return Scaffold(
          body: _getViewForIndex(model.currentIndex),
          bottomNavigationBar: Container(
            color: Color(0xFF0e1111),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpotlightNavItem(
                  icon: Icons.home,
                  label: 'home',
                  isSelected: model.currentIndex == 0,
                  index: 0,
                  onTap: () => model.setIndex(0),
                ),
                SpotlightNavItem(
                  icon: Icons.calendar_today,
                  label: 'My Bookings',
                  isSelected: model.currentIndex == 1,
                  index: 1,
                  onTap: () => model.setIndex(1),
                ),
                SpotlightNavItem(
                  icon: Icons.local_taxi,
                  label: 'Track Driver',
                  isSelected: model.currentIndex == 2,
                  index: 2,
                  onTap: () => model.setIndex(2),
                ),
                SpotlightNavItem(
                  icon: Icons.person,
                  label: 'My Account',
                  isSelected: model.currentIndex == 3,
                  index: 3,
                  onTap: () => model.setIndex(3),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _getViewForIndex(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return BookingView();
      case 2:
        return TrackDriverView();
      case 3:
        return MyAccountView();
      default:
        return HomeView();
    }
  }
}
