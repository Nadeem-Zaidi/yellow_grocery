import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_yellow/connectivity/connectivity_bloc/bloc/connectivity_bloc.dart';

import 'phone_state/phone_auth_cubit.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bool isUserLoggedIn = context.read<AuthCubit>().state.isLoggedIn;
      final bool isUserCheckedFromAuthService =
          context.read<AuthCubit>().state.isUserCheckedFromAuthService;
      bool connection = context.read<ConnectivityBloc>().state.isConnected;

      if (isUserLoggedIn) {
        Navigator.of(context).pushReplacementNamed('/home');
      } else if (!isUserLoggedIn && isUserCheckedFromAuthService) {
        Navigator.of(context).pushReplacementNamed('/signinsignup');
      }

      // if (connection) {
      //   print("****connectivity****** ${connection}");
      //   if (isUserLoggedIn) {
      //     print("***user logged in ");
      //     Navigator.of(context).pushReplacementNamed('/home');
      //   } else if (!isUserLoggedIn && isUserCheckedFromAuthService) {
      //     Navigator.of(context).pushReplacementNamed('/signinsignup');
      //   }
      // } else {
      //   Navigator.of(context).pushReplacementNamed('/disconnected');
      // }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listenWhen: (p, c) =>
              p.isUserCheckedFromAuthService !=
                  c.isUserCheckedFromAuthService &&
              c.isUserCheckedFromAuthService,
          listener: (context, state) {
            final bool isUserLoggedIn = state.isLoggedIn;
            print("****** auth bloc*******");

            if (isUserLoggedIn) {
              Navigator.of(context).pushReplacementNamed('/home');
            } else {
              Navigator.of(context).pushReplacementNamed('signinsignup');
            }
          },
        ),
        // BlocListener<ConnectivityBloc, ConnectivityState>(
        //     listener: (context, state) {
        //   print("****connectivity bloc*********");
        //   if (state.isConnected) {
        //     Navigator.of(context).pushReplacementNamed('/signinsignup');
        //   } else {
        //     Navigator.of(context).pushReplacementNamed('/disconnected');
        //   }
        // }),
      ],
      child: const Center(
        child: CircularProgressIndicator(color: Colors.white),
      ),
    );
  }
}
