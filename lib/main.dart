import 'package:electronics_market/controller/data_controller.dart';
import 'package:electronics_market/ui/screens/detail_screen.dart';
import 'package:electronics_market/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataController(),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          initialLocation: '/home',
          routes: [
            GoRoute(
              path: "/home",
              name: "home",
              builder: (context, state) => const HomeScreen(),
              routes: [
                GoRoute(
                  path: "detail",
                  name: "detail",
                  builder: (context, state) => const DetailScreen(),
                ),
              ],
            ),
          ],
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
