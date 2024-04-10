import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:grocery_yellow/authentication2/auth2_bloc/phone_number_signin_cubit.dart';

class OTPScreen2 extends StatefulWidget {
  const OTPScreen2({super.key});

  @override
  State<OTPScreen2> createState() => _OTPScreen2State();
}

class _OTPScreen2State extends State<OTPScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify OTP"),
        leading: IconButton(
            onPressed: () {
              context.read<PhoneNumberSignInCubit>().reset();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Stack(
        children: [
          Container(),
          Positioned(
            top: 125,
            bottom: 10,
            left: 5,
            right: 5,
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter OTP",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        context
                            .read<PhoneNumberSignInCubit>()
                            .smsCodeChanged(smsCode: value);
                      }),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.deepPurple, //background color of button
                      //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(10),
                      //content padding inside button
                    ),
                    onPressed: () {
                      context.read<PhoneNumberSignInCubit>().verifySmsCode();
                    },
                    child: const Text(
                      "Verify OTP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
