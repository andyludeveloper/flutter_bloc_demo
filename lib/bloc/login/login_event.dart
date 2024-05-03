part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class Login extends LoginEvent {
  final String account;
  final String password;

  Login(this.account, this.password);
}
