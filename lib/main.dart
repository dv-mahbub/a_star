import 'package:a_star/pages/screenView/desktop_view.dart';
import 'package:a_star/pages/screenView/movile_view.dart';
import 'package:a_star/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(desktopBody: DesktopView(), mobileBody: MobileView());
  }
}
