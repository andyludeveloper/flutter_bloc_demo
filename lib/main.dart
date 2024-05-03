import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login/login_bloc.dart';
import 'login_page.dart';
import 'service/fake_login_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true,
        ),
        home: BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(loginService: FakeLoginService()),
          child: Scaffold(appBar: AppBar(), body: const LoginPage()),
        ));
  }
}
