import 'package:flutter_demo/service/login_service.dart';

class FakeLoginService extends LoginService {
  @override
  Future<bool> login(String account, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return account == 'admin' && password == 'password';
  }
}
