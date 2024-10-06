import 'package:code_chef/src/utils/locator.dart';
import 'package:flutter/material.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(const CloudChef());
}

class CloudChef extends StatelessWidget {
  const CloudChef({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

    );
  }
}
