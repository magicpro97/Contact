import 'package:flutter/material.dart';

import 'app/app.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setUp();

  runApp(
    App(),
  );
}
