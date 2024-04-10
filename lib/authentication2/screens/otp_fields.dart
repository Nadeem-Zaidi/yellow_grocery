import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth2_bloc/phone_number_signin_cubit.dart';

class OTPField extends StatefulWidget {
  const OTPField({super.key});

  @override
  State<OTPField> createState() => _OTPFieldState();
}

class _OTPFieldState extends State<OTPField> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());

  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  final _formKey = GlobalKey<FormState>();

  void getOTP() {
    String otp = "";
    for (int i = 0; i < 6; i++) {
      otp += _controllers[i].text.trim();
    }

    context.read<PhoneNumberSignInCubit>().smsCodeChanged(smsCode: otp);
  }

  void _onSave() {
    if (_formKey.currentState!.validate()) {
      context.read<PhoneNumberSignInCubit>().verifySmsCode();
    }
  }

  @override
  void dispose() {
    super.dispose();
    for (int i = 0; i < 6; i++) {
      _controllers[i].dispose();
    }
  }

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
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        child: Form(
          key: _formKey,
          child: Column(children: [
            const Text(
              "Verify OTP",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildOTPFields(context, _controllers, _focusNodes),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .primaryColor, //background color of button
                  //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  //content padding inside button
                ),
                onPressed: () {
                  // _onSave();
                  getOTP();
                  _onSave();
                  FocusScope.of(context).unfocus();
                },
                child: const Text(
                  "Verify OTP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

List<Widget> _buildOTPFields(BuildContext context,
    List<TextEditingController> controllers, List<FocusNode> focusNodes) {
  List<Widget> fields = [];
  for (int i = 0; i < 6; i++) {
    fields.add(
      Container(
        width: 40,
        height: 50,
        margin: const EdgeInsets.only(left: 5),
        child: RawKeyboardListener(
          focusNode: FocusNode(), // A new FocusNode for the RawKeyboardListener
          onKey: (event) {
            if (event.logicalKey == LogicalKeyboardKey.backspace &&
                controllers[i].text.isEmpty &&
                i > 0) {
              focusNodes[i - 1].requestFocus();
            }
          },
          child: TextFormField(
            controller: controllers[i],
            focusNode: focusNodes[i],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            onChanged: (value) {
              if (value.length == 1 && i < 5) {
                focusNodes[i + 1].requestFocus();
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(8)),
              counterText: "",
              // Add other decoration properties as needed
            ),
          ),
        ),
      ),
    );
  }
  return fields;
}
