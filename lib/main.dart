import 'package:app_omboarding/views/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//test
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App onboard',
      theme: ThemeData(
       // primarySwatch: Color(0xff406d96),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:OnboardingPage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
