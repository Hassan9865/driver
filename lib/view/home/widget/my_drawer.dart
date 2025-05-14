import 'package:driver/view/home/home_viewModel.dart';
import 'package:driver/view/setting%20view/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      // onViewModelReady: (viewModel) => viewModel.getNameEmail(),
      builder: (context, HomeViewmodel viewModel, child) {
        return Drawer(
          // backgroundColor: viewModel.themeColors.scaffoldBackground,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        // backgroundImage: AssetImage('assets/images/pic1.jpg'),
                        radius: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "hassan",
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle item 1 tap
                },
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.black),
                  title: Text("profile", style: TextStyle(color: Colors.black)),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.star, color: Colors.black),
                  title: Text("story", style: TextStyle(color: Colors.black)),
                ),
              ),
              InkWell(
                onTap: () async {
                  // Handle settings tap
                  viewModel.navigateTosettingview();
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingView()),
                  );
                  print('ok');
                },
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.black),
                  title: Text("setting", style: TextStyle(color: Colors.black)),
                ),
              ),
              Divider(
                color: Colors.black,
              ), // Divider between regular items and additional options

              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.black),
                  title: Text("logout", style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
