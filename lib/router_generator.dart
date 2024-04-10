import 'package:flutter/material.dart';
import 'package:grocery_yellow/authentication2/landing_page.dart';
import 'package:grocery_yellow/authentication2/screens/app2.dart';
import 'package:grocery_yellow/authentication2/screens/otp_fields.dart';
import 'package:grocery_yellow/connectivity/connectivity_bloc/bloc/connectivity_bloc.dart';
import 'package:grocery_yellow/connectivity_check.dart';
import 'package:grocery_yellow/disconnected.dart';
import 'package:grocery_yellow/home.dart';
import '../postgresql_test_product_category/screens/products.dart' as ps;

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    // Getting arguments passed in while calling Navigator.pushNamed

    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LandingPage());
      case '/connectivitycheck':
        return MaterialPageRoute(
            builder: (_) => const ConnectivityCheckOnInit());
      case '/home':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/product':
        return MaterialPageRoute(builder: (_) => const ps.Product());
      // case '/productdetail':
      //   return MaterialPageRoute(builder: (_) => const ProductDetail());
      case '/signinsignup':
        return MaterialPageRoute(builder: (_) => const App2());
      case '/otp':
        return MaterialPageRoute(builder: (_) => const OTPField());
      case '/disconnected':
        return MaterialPageRoute(builder: (_) => const DisconnectedScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
