import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:grocery_yellow/authentication2/domain/auth/auth_failure.dart';
import 'package:grocery_yellow/authentication2/domain/auth/iauth_service2.dart';

import '../domain/auth/auth_user_model.dart';
import './firebase_mapper.dart';

class FirebaseAuth2Service implements IAuthService {
  final FirebaseAuth _firebaseAuth;
  FirebaseAuth2Service(this._firebaseAuth);

  @override
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required String phoneNumber,
    required Duration timeout,
  }) async* {
    final StreamController<Either<AuthFailure, String>> streamController =
        StreamController<Either<AuthFailure, String>>();
    await _firebaseAuth.verifyPhoneNumber(
        timeout: timeout,
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // ANDROID ONLY!
          // Sign the user in (or link) with the auto-generated credential.
          // The feature is currently disabled for the sake of simplicity of the tutorial.
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          streamController.add(left(const AuthFailure.smsTimeout()));
        },
        verificationFailed: (FirebaseAuthException e) {
          late final Either<AuthFailure, String> result;
          if (e.code == 'invalid-phone-number') {
            result = left(const AuthFailure.invalidPhoneNumber());
          } else if (e.code == 'too-many-requests') {
            result = left(const AuthFailure.tooManyRequests());
          } else if (e.code == 'app-not-authorized') {
            result = left(const AuthFailure.deviceNotSupported());
          } else if (e.code == 'server-error') {
            result = left(const AuthFailure.serverError());
          } else if (e.code == 'Invalid format.') {
            result = left(const AuthFailure.invalidFormat());
          } else {
            result = left(AuthFailure.genericError(e.code ?? "there"));
          }
          streamController.add(result);
        });
    yield* streamController.stream;
  }

  @override
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);

      await _firebaseAuth.signInWithCredential(phoneAuthCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left(const AuthFailure.sessionExpired());
      } else if (e.code == "ınvalıd-verıfıcatıon-code" ||
          e.code == "invalid-verification-code") {
        return left(const AuthFailure.invalidVerificationCode());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Stream<AuthUserModel> get authStateChanges {
    return _firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          // The user is signed out
          return AuthUserModel.empty();
        } else {
          // The user is logged in
          return user.toDomain();
        }
      },
    );
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
