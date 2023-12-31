import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toko_devia/data/datasources/auth_local_datasource.dart';
import 'package:toko_devia/data/datasources/auth_remote_datasource.dart';
import 'package:toko_devia/presentation/auth/bloc/register/register_bloc.dart';
import 'package:toko_devia/presentation/auth/login_page.dart';
import 'package:toko_devia/presentation/auth/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:toko_devia/presentation/dashboard/dashboard_page.dart';
import 'package:toko_devia/presentation/home/bloc/products/products_bloc.dart';

import 'presentation/auth/bloc/login/login_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) =>
              ProductsBloc()..add(const ProductsEvent.getAll()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder<bool>(
          future: AuthLocalDataSource().isLogin(),
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.data!) {
              return const DashboardPage();
            } else {
              return const LoginPage();
            }
          },
        ),
      ),
    );
  }
}
