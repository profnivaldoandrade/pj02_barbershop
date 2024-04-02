import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';
import 'package:pj_education_bw/src/core/ui/widgets/barbershop_loader.dart';
import 'package:pj_education_bw/src/features/splash/splash_page.dart';

class BarberShopApp extends StatelessWidget {
  const BarberShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarberShopLoader(),
      builder: (asyncNavigatorObserver) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DW BarberShop',
          navigatorObservers: [asyncNavigatorObserver],
          routes: {
            '/': (_) => const SplashPage(),
          },
        );
      },
    );
  }
}
