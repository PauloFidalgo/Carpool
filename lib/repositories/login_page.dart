import 'dart:ffi';

import 'package:carpool/logic/theme_logic.dart';
import 'package:carpool/repositories/home_page.dart';
import 'package:carpool/repositories/login_page/login_page_logic.dart';
import 'package:carpool/repositories/signup_page.dart';
import 'package:carpool/repositories/signup_page/signup_page_logic.dart';
import 'package:carpool/routes.dart';
import 'package:carpool/theme/app_colors.dart';
import 'package:carpool/theme/app_sizes.dart';
import 'package:carpool/theme/app_style.dart';
import 'package:carpool/ui/app_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../ui/app_bottom_bar.dart';
import '../utils/strings/managers/strings_managers.dart';
import '../utils/strings/strings_constants.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/loginPage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _buildBody(
      {required BuildContext context, required LoginPageState state}) {
    final themeLogic = BlocProvider.of<ThemeLogic>(context);
    final currentTheme = themeLogic.state.appTheme;
    final bool isDarkMode = currentTheme == AppThemeModes.dark ? true : false;
    final cubit = context.read<LoginPageLogic>();

    TextEditingController _passwordController = TextEditingController();
    TextEditingController _loginController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back",
                    style: isDarkMode ? AppStyle.h1Dark : AppStyle.h1Light),
                const SizedBox(height: AppSizes.sm),
                Text("Have a better sharing experience",
                    style: isDarkMode ? AppStyle.h2Dark : AppStyle.h2Light)
              ],
            ),

            //Form
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.spaceBtwSections),
                child: Column(
                  children: [
                    ///Email
                    TextFormField(
                      controller: _loginController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.message,
                          color: isDarkMode
                              ? AppColors.primaryIconDark
                              : AppColors.primaryIcon,
                        ),
                        labelText: "Email",
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields,
                    ),

                    ///Password
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                            color: isDarkMode
                                ? AppColors.primaryIconDark
                                : AppColors.primaryIcon,
                          ),
                          labelText: "Password",
                          suffixIcon: Icon(Icons.lock)),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields / 2,
                    ),

                    // Remember and forget password

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Remember Me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text("Remember Me",
                                style: isDarkMode
                                    ? AppStyle.h2Dark
                                    : AppStyle.h2Light),
                          ],
                        ),

                        // Forget Password
                        TextButton(
                            onPressed: () {},
                            child: Text("Forget Password?",
                                style: isDarkMode
                                    ? AppStyle.h2Dark
                                    : AppStyle.h2Light)),
                      ],
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwSections,
                    ),

                    // Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          String login = _loginController.text.trim();
                          String password = _passwordController.text.trim();

                          if (login.isNotEmpty && password.isNotEmpty) {
                            cubit.signInWithEmailAndPassword(login, password);
                          }
                        },
                        child: Text(
                          "Sign In",
                          style:
                              isDarkMode ? AppStyle.h2Dark : AppStyle.h2Light,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                    // Create Account Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            SignupPage.routeName,
                          );
                        },
                        child: Text(
                          "Create Account",
                          style:
                              isDarkMode ? AppStyle.h2Dark : AppStyle.h2Light,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        Navigator.of(context).pushNamed(HomePage.routeName)
                      },
                      icon: const Icon(
                        Icons.iron,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwSections,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPageLogic, LoginPageState>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(context: context, state: state),
        );
      },
    );
  }
}
