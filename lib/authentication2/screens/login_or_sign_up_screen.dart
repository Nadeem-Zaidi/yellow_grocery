import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grocery_yellow/authentication2/auth2_bloc/phone_number_signin_cubit.dart';
import 'package:grocery_yellow/authentication2/widgets/divider_or.dart';

import '../../location_service/location_cubit/location_cubit.dart';

class LoginSignUp2 extends StatefulWidget {
  const LoginSignUp2({super.key});

  @override
  State<LoginSignUp2> createState() => _LoginSignUp2State();
}

class _LoginSignUp2State extends State<LoginSignUp2> {
  void findCategory() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login or Signup"),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<LocationCubit, LocationState>(
              listenWhen: (p, c) => p.serviceEnabled != c.serviceEnabled,
              listener: ((context, state) {
                if (state.serviceEnabled && state.permission) {
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Location Services Disabled'),
                        content: const Text(
                            'Please enable location services to use this feature.'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              // Close the dialog
                              Navigator.of(context).pop();
                              // Open the location settings
                              Geolocator.openLocationSettings();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              }),
            ),
          ],
          child: Stack(children: [
            Container(),
            Positioned(
              top: 125,
              left: 5,
              right: 5,
              bottom: 10,
              child: Container(
                height: 200,
                padding: const EdgeInsets.all(10),
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  prefixText: "+91",
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                  labelText: "Enter your Phone number",
                                ),
                                onChanged: (value) {
                                  context
                                      .read<PhoneNumberSignInCubit>()
                                      .phoneNumberChanged(
                                          phoneNumber: "+91$value".trim());
                                }),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: BlocBuilder<PhoneNumberSignInCubit,
                              PhoneNumberSignInState>(
                            builder: (context, state) {
                              if (state.phoneNumber.length == 13) {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    //background color of button
                                    //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(10),
                                    //content padding inside button
                                  ),
                                  onPressed: () {
                                    // context
                                    //     .read<LocationCubit>()
                                    //     .getCurrentPosition();
                                    context
                                        .read<PhoneNumberSignInCubit>()
                                        .signInWithPhoneNumber();
                                    FocusScope.of(context).unfocus();
                                  },
                                  child: const Text(
                                    "Continue",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                              }
                              return Container();
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        dividerOr(),
                        const SizedBox(height: 10),
                        otherSignInOptions(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
