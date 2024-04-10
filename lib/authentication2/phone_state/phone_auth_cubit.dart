import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_yellow/authentication2/domain/auth/iauth_service2.dart';
import 'package:grocery_yellow/authentication2/infrastructure/firebase_auth2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/auth/auth_user_model.dart';

part 'phone_auth_cubit.freezed.dart';
part 'phone_auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  late final IAuthService _authService;

  ///The stream subscription for listening to the auth state changes
  late StreamSubscription<AuthUserModel>? _authUserSubscription;
  AuthCubit() : super(AuthState.empty()) {
    _authService = FirebaseAuth2Service(FirebaseAuth.instance);
    _authUserSubscription =
        _authService.authStateChanges.listen(_listenAuthStateChangesStream);
  }
  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> _listenAuthStateChangesStream(AuthUserModel authUser) async {
    emit(
      state.copyWith(
        userModel: authUser,
        isUserCheckedFromAuthService: true,
      ),
    );
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
}
