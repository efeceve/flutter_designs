import 'package:flutter/material.dart';
import 'package:flutter_designs/widgets/background.dart';
import 'package:flutter_designs/widgets/card_table.dart';
import 'package:flutter_designs/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          // Home body
          _HomeBody()
          // Navigation bar
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titles
          PageTitle(),
          // Cards table
          CardTable()
        ],
      ),
    );
  }
}
