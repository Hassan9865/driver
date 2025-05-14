import 'package:driver/view/my_account/my_account_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => MyAccountViewmodel(),
      builder: (context, MyAccountViewmodel viewmodel, child) {
        return Scaffold();
      },
    );
  }
}
