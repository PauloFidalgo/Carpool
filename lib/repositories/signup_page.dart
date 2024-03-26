import 'package:carpool/repositories/signup_page/signup_page_logic.dart';
import 'package:carpool/theme/app_sizes.dart';
import 'package:carpool/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Gender {
  Male,
  Female,
  Other,
}

class SignupPage extends StatefulWidget {
  static const String routeName = "/signupPage";
  const SignupPage({Key? key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}
  

class _SignupPageState extends State<SignupPage> {
    /*
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  */


  @override
  Widget _buildBody({required BuildContext context, required SignupPageState state}) {
    final bool isDarkMode = state.isDarkMode;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: "First Name",
                              prefixIcon: Icon(Icons.male),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: "Last Name",
                              prefixIcon: Icon(Icons.male),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields,
                    ),

                    ///Username
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),

                    ///Email
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields,
                    ),

                    ///Phone Number
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Phone Number",
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields,
                    ),

                    ///Password
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.remove_red_eye)),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields,
                    ),

                    ///Gender Dropdown
                    DropdownButtonFormField<Gender>(
                      decoration: const InputDecoration(
                        labelText: 'Gender',
                        prefixIcon: Icon(Icons.male),
                      ),
                      value: Gender.Male,
                      items: const [
                        DropdownMenuItem(
                          value: Gender.Male,
                          child: Text('Male'),
                        ),
                        DropdownMenuItem(
                          value: Gender.Female,
                          child: Text('Female'),
                        ),
                        DropdownMenuItem(
                          value: Gender.Other,
                          child: Text('Other'),
                        ),
                      ],
                      onChanged: (value) {
                        // Handle the selection here
                      },
                    ),

                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields,
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwSections,
                    ),

                    ///Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Create Account",
                            style: isDarkMode ? AppStyle.h2Dark : AppStyle.h2Light),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

    @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupPageLogic, SignupPageState>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(context: context, state: state),
        );
      },
    );
  }
}
