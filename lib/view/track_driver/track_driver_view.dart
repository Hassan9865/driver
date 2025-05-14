import 'package:driver/view/track_driver/track_driver_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TrackDriverView extends StatelessWidget {
  const TrackDriverView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => TrackDriverViewmodel(),
      builder: (context, TrackDriverViewmodel viewmodel, child) {
        return Scaffold();
      },
    );
  }
}
