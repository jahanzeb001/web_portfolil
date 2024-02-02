import 'package:flutter/material.dart';
import 'package:my_portfilio/screens/views/mobile/mobile_screen.dart';
import 'package:my_portfilio/screens/views/tablet/tablet_screen.dart';
import 'package:my_portfilio/screens/views/web/web_screen.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1024) {
              return const WebScreen();
            } else if (constraints.maxWidth > 600) {
              // Tablet layout
              return const TabletScreen();
            } else {
              // Mobile layout
              return MobileScreen();
            }
          },
        ),
      ),
    );
  }
}
