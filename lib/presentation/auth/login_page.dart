import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toko_devia/common/constants/images.dart';
import 'package:toko_devia/presentation/home/dashboard_page.dart';
import 'package:flutter/material.dart';

import '../../common/components/button.dart';
import '../../common/components/custom_text_field.dart';
import '../../common/components/space_height.dart';
import '../../common/constants/colors.dart';
import '../../data/models/requests/login_request_model.dart';
import 'bloc/login/login_bloc.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SpaceHeight(80.0),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: Image.asset(
                Images.logo,
                width: 100,
                height: 100,
              )),
          const SpaceHeight(24.0),
          const Center(
            child: Text(
              "E-COMMERCE Ananda Cahya Ramadan",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorName.dark,
              ),
            ),
          ),
          const SpaceHeight(8.0),
          const Center(
            child: Text(
              "Masuk untuk melanjutkan",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
          ),
          const SpaceHeight(40.0),
          CustomTextField(
            controller: emailController,
            label: 'Email',
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
          ),
          const SpaceHeight(24.0),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: (data) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardPage()));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Sukses Login'),
                      backgroundColor: Colors.lightGreen,
                    ));
                  },
                  error: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.red,
                      ),
                    );
                  });
            },
            builder: (context, state) {
              return Button.filled(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const DashboardPage(),
                  //   ),
                  // );
                  final data = LoginRequestModel(
                    password: passwordController.text,
                    identifier: emailController.text,
                  );
                  context.read<LoginBloc>().add(LoginEvent.login(data));
                },
                label: 'Masuk',
              );
            },
          ),
          const SpaceHeight(122.0),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text.rich(
                TextSpan(
                  text: "Belum punya akun? ",
                  children: [
                    TextSpan(
                      text: "Register",
                      style: TextStyle(color: ColorName.primary),
                    ),
                  ],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: ColorName.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
