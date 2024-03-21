import 'package:carpool/globals.dart';
import 'package:carpool/theme/app_colors.dart';
import 'package:carpool/theme/app_style.dart';
import 'package:carpool/theme/utils/formaters/app_sizes.dart';
import 'package:carpool/theme/utils/formaters/spacing_styles.dart';
import 'package:flutter/material.dart';

import '../theme/utils/helpers/helper_functions.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "/login_page";
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? darkAppLogo : lightAppLogo),
                  ),
                  Text("Welcome back",
                      style: dark ? AppStyle.h1Dark : AppStyle.h1Light),
                  const SizedBox(height: AppSizes.sm),
                  Text("Have a better sharing experience",
                      style: dark ? AppStyle.h2Dark : AppStyle.h2Light)
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
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.message,
                            color: dark
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
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.password,
                              color: dark
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
                                  style: dark
                                      ? AppStyle.h2Dark
                                      : AppStyle.h2Light),
                            ],
                          ),

                          // Forget Password
                          TextButton(
                              onPressed: () {},
                              child: Text("Forget Password?",
                                  style: dark
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
                            onPressed: () {},
                            child: Text("Sign In",
                                style:
                                    dark ? AppStyle.h2Dark : AppStyle.h2Light)),
                      ),
                      const SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),
                      // Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Create Account",
                                style:
                                    dark ? AppStyle.h2Dark : AppStyle.h2Light)),
                      ),
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
      ),
    );
  }
}
