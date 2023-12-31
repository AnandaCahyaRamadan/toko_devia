import 'package:flutter/material.dart';
import 'package:toko_devia/data/datasources/auth_local_datasource.dart';
import 'package:toko_devia/presentation/auth/login_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AuthLocalDataSource().removeAuthData();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return LoginPage();
            }));
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
