import 'package:flutter/material.dart';

import '../../consts.dart';
import 'home_appbar(1).dart';
import 'home_bottum_bar.dart';
import 'home_drawer.dart';
import 'list_of_products.dart';
import 'my_category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackGroundColor,
      drawer: const HomeDrawer(),
      appBar: const HomeAppBar(),
      bottomNavigationBar: const HomeBottomBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyCategoryList(title: 'Categories'),
              ListOfProducts(listTitle: 'Special offers'),
              ListOfProducts(listTitle: 'Top rate'),
              ListOfProducts(listTitle: 'Top sale'),
            ],
          ),
        ),
      ),
    );
  }
}
