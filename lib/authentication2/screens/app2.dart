import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_yellow/authentication2/auth2_bloc/phone_number_signin_cubit.dart';
import 'package:grocery_yellow/authentication2/screens/login_or_sign_up_screen.dart';
import 'package:grocery_yellow/authentication2/screens/otp_fields.dart';
import 'package:grocery_yellow/entities/repository.dart';
import 'package:grocery_yellow/models/user.dart';
import '../../connectivity/connectivity_bloc/bloc/connectivity_bloc.dart';
import '../../no_internet_overlay.dart';
import '../phone_state/phone_auth_cubit.dart';
import 'overlay.dart';

class App2 extends StatefulWidget {
  const App2({super.key});

  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  void getData() async {
    var userRepository = FirestoreRepository<AppUser>(AppUser());
    // var result =
    //     await userRepository.query().where("name", isEqualTo: "").find();

    // print(result);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<ConnectivityBloc, ConnectivityState>(
            listener: (context, state) {
              if (!state.isConnected) {
                NoInternetOverLay.showOverlay(
                    context, "No Internet Connection");
              } else if (state.isConnected) {
                NoInternetOverLay.removeOverlay();
              }
            },
          ),
          BlocListener<AuthCubit, AuthState>(
            listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn && c.isLoggedIn,
            listener: (context, state) {
              Navigator.of(context).pushReplacementNamed("/home");
              context.read<PhoneNumberSignInCubit>().reset();
            },
          ),
          BlocListener<PhoneNumberSignInCubit, PhoneNumberSignInState>(
            listenWhen: (p, c) => p.failureOption != c.failureOption,
            listener: (context, state) {
              state.failureOption.fold(() {}, (failure) {
                OverlayHelper.removeOverlay();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(failure.when(
                      serverError: () => "Server Error",
                      invalidPhoneNumber: () => "Invalid Phone Number",
                      tooManyRequests: () => "Too Many Requests",
                      deviceNotSupported: () => "Device Not Supported",
                      smsTimeout: () => "Sms Timeout",
                      sessionExpired: () => "Session Expired",
                      genericError: (errp) => errp.toString(),
                      invalidFormat: () => "Invalid format.", // Add this line.
                      invalidVerificationCode: () =>
                          "Invalid Verification Code",
                    )),
                  ),
                );

                // context.read<PhoneNumberSignInCubit>().reset();
              });
            },
          ),
          BlocListener<PhoneNumberSignInCubit, PhoneNumberSignInState>(
              listenWhen: (previous, current) =>
                  previous.isInProgress != current.isInProgress ||
                  previous.verificationIdOption != current.verificationIdOption,
              listener: (ctx, state) {
                OverlayHelper.removeOverlay();
                if (state.isInProgress && state.verificationIdOption.isNone()) {
                  OverlayHelper.showOverlay(context, "Sending OTP");
                }
                if (state.isInProgress && state.verificationIdOption.isSome()) {
                  OverlayHelper.showOverlay(context, "Verifying OTP");
                }
              })
        ],
        child: BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
          builder: (context, state) {
            if (state.displaySmsCodeForm) {
              return const OTPField();
            } else {
              return const LoginSignUp2();
            }
          },
        ),
      ),
    );
  }
}
