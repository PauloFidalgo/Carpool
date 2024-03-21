import 'package:carpool/theme/app_style.dart';
import 'package:carpool/theme/utils/formaters/app_sizes.dart';
import 'package:carpool/theme/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Gender {
  Male,
  Female,
  Other,
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
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
                        child: Text("Create Account", style: dark? AppStyle.h2Dark : AppStyle.h2Light),
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
}
