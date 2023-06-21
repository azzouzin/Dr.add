import 'package:flutter/material.dart';
import '../Compenent/widgets/custom_navigation_bar.dart';
import '../Compenent/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
