import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_yellow/authentication2/auth2_bloc/phone_number_signin_cubit.dart';
import 'package:grocery_yellow/authentication2/phone_state/phone_auth_cubit.dart';
import 'package:grocery_yellow/connectivity/connectivity_bloc/bloc/connectivity_bloc.dart';
import 'package:grocery_yellow/location_service/location_cubit/location_cubit.dart';
import 'package:grocery_yellow/router_generator.dart';
import 'package:grocery_yellow/theme/theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    connectivity: Connectivity(),
  ));
}

class MyApp extends StatelessWidget {
  final Connectivity connectivity;
  MyApp({required this.connectivity, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PhoneNumberSignInCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(
          create: (context) => LocationCubit(),
        ),
        BlocProvider<ConnectivityBloc>(
            create: (context) => ConnectivityBloc(connectivity: connectivity))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        initialRoute: '/',
        onGenerateRoute: RouterGenerator.generateRoute,
      ),
    );
  }
}
