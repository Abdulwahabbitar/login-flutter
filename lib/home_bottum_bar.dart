import 'package:flutter/material.dart';

import '../../../consts.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 0,
      child: Container(
        color: kMainColor,
        height: 52,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                  Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 28,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
