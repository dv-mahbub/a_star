import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget? desktopBody;
  const ResponsiveLayout({Key? key, this.desktopBody, required this.mobileBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 600) {
        return mobileBody;
      } else {
        return desktopBody ?? Container();
      }
    });
  }
}
