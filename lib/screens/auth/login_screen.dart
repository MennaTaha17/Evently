import 'dart:ui';
import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/common/widgets/custom_main_filled_button.dart';
import 'package:evently/common/widgets/custom_outlined_button.dart';
import 'package:evently/common/widgets/custom_text_field.dart';
import 'package:evently/gen/assets.gen.dart';
import 'package:evently/screens/auth/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/soginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.images.png.eventlyImage.image(height: 140, width: 140),
                //Image.asset(Assets.images.png.eventlyImage.path),
                Text(
                  'Evently', //TODo localization
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainColor,
                  ),
                ),
                SizedBox(height: 24),
                CustomTextField(
                  hintText: 'Email', //TODo localization
                  prefixIcon: Assets.images.svg.emailIcon.svg(
                    color: Theme.of(context).hoverColor,
                  ),
                ),
                SizedBox(height: 16),
                CustomTextField(
                  hintText: 'Password', //TODo localization
                  prefixIcon: Assets.images.svg.passwordIcon.svg(
                    color: Theme.of(context).hoverColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password?', //TODo localization
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomMainFilledButton(text: 'Login'), //TODo localization
                SizedBox(height: 24),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t Have Account ? ',
                      ), //TODo localization
                      TextSpan(
                        text: 'Create Account', //TODo localization
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: AppColors.mainColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.mainColor,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(
                                  context,
                                ).pushNamed(SignUpScreen.routeName);
                              },
                      ),
                    ],
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  spacing: 16,
                  children: [
                    Expanded(child: Divider(indent: 16)),
                    Text(
                      'Or', //TODo localization
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(child: Divider(endIndent: 16)),
                  ],
                ),
                SizedBox(height: 24),
                CustomOutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.images.svg.googleIcon.svg(width: 26, height: 26),
                      SizedBox(width: 10),
                      Text(
                        'Login With Google', //TODo localization
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Switch(
                  value: false,
                  onChanged: (value) {},
                  activeThumbImage: AssetImage(Assets.images.png.arIcon.path),
                  inactiveThumbImage: AssetImage(Assets.images.png.enIcon.path),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
