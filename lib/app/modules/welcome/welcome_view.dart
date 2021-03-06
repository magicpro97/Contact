import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resouces/dimen.dart';
import 'welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dimen.DP_20,
            ),
            Image.asset('assets/images/banner.jpg'),
            SizedBox(
              height: Dimen.DP_100,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Create a new event'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Scan invitation code'),
            ),
            Text(
              'or\nsign in to sync your information',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
