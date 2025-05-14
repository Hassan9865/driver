import 'package:driver/view/booking/booking_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => BookingViewmodel(),
      builder: (context, BookingViewmodel viewmodel, child) {
        return Scaffold();
      },
    );
  }
}
