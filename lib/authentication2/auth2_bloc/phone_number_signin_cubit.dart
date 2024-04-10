import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grocery_yellow/authentication2/domain/auth/iauth_service2.dart';
import 'package:grocery_yellow/authentication2/infrastructure/firebase_auth2.dart';

import '../domain/auth/auth_failure.dart';

part 'phone_number_signin_state.dart';
part 'phone_number_signin_cubit.freezed.dart';

class PhoneNumberSignInCubit extends Cubit<PhoneNumberSignInState> {
  late final IAuthService _authService;
  StreamSubscription<Either<AuthFailure, String>>?
      _phoneNumberSignInSubscription;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);

  PhoneNumberSignInCubit() : super(PhoneNumberSignInState.initial()) {
    _authService = FirebaseAuth2Service(FirebaseAuth.instance);
  }

  void smsCodeChanged({
    required String smsCode,
  }) {
    emit(state.copyWith(smsCode: smsCode));
  }

  void phoneNumberChanged({
    required String phoneNumber,
  }) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }

  void signInWithPhoneNumber() {
    emit(state.copyWith(isInProgress: true, failureOption: none()));

    _phoneNumberSignInSubscription = _authService
        .signInWithPhoneNumber(
            phoneNumber: state.phoneNumber, timeout: verificationCodeTimeout)
        .listen(
          (Either<AuthFailure, String> failureOrVerificationId) =>
              failureOrVerificationId.fold(
            (AuthFailure failure) {
              //This is the part where we receive failures like 'invalidPhoneNumber', 'smsTimeout' etc.
              emit(state.copyWith(
                  failureOption: some(failure), isInProgress: false));
            },
            (String verificationId) {
              // Catch this in Bloc Listener and take the user to SMS code entry page.
              emit(
                state.copyWith(
                  verificationIdOption: some(verificationId),
                  isInProgress: false,
                ),
              );
            },
          ),
        );
  }

  void verifySmsCode() {
    state.verificationIdOption.fold(
      () {
        //Verification id does not exist. This should not happen.
      },
      (String verificationId) async {
        emit(
          state.copyWith(
            isInProgress: true,
            failureOption: none(),
          ),
        );
        final Either<AuthFailure, Unit> failureOrSuccess =
            await _authService.verifySmsCode(
                smsCode: state.smsCode, verificationId: verificationId);
        failureOrSuccess.fold(
          (AuthFailure failure) {
            emit(
              state.copyWith(failureOption: some(failure), isInProgress: false),
            );
          },
          (_) {
            emit(state.copyWith(isInProgress: false));
            // Verification completed successfully case.
            // Bloc Listener in the UI should listen to Auth Listener State and if user is authenticated and not anonymous, we should take them to Registration page or Feed Page.
          },
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignInSubscription?.cancel();
    return super.close();
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }

  void reset() {
    emit(
      state.copyWith(
        failureOption: none(),
        verificationIdOption: none(),
        isInProgress: false,
      ),
    );
  }
}
