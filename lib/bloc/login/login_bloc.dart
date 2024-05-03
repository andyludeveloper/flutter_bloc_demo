import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/service/login_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService loginService;

  LoginBloc({required this.loginService}) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is Login) {
        await _login(emit, event);
      }
    });
  }

  Future<void> _login(Emitter<LoginState> emit, Login event) async {
    emit(LoginLoading());
    final result = await loginService.login(event.account, event.password);
    if (result) {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure("account/password error"));
    }
  }
}
