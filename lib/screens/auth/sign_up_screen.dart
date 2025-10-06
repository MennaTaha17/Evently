import 'package:evently/screens/auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/theme/app_colors.dart';
import '../../common/widgets/custom_main_filled_button.dart';
import '../../common/widgets/custom_outlined_button.dart';
import '../../common/widgets/custom_text_field.dart';
import '../../gen/assets.gen.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/signUpScreen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.images.png.eventlyImage.image(height: 140, width: 140),
              Text(
                'Evently', //TODo localization
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainColor,
                ),
              ),
              CustomTextField(
                hintText: 'name', //TODo localization
                prefixIcon: Assets.images.svg.personIcon.svg(
                  color: Theme.of(context).hoverColor,
                ),
              ),
              SizedBox(height: 16),
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
              SizedBox(height: 16),
              CustomTextField(
                hintText: 'Re Password', //TODo localization
                prefixIcon: Assets.images.svg.emailIcon.svg(
                  color: Theme.of(context).hoverColor,
                ),
              ),
              SizedBox(height: 16),
              CustomMainFilledButton(
                text: 'Create Account',
              ), //TODo localization
              SizedBox(height: 24),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already Have Account ? ',
                    ), //TODo localization
                    TextSpan(
                      text: 'Sign Up', //TODo localization
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
                              ).pop();
                            },
                    ),
                  ],
                  style: Theme.of(context).textTheme.titleMedium,
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
    );
  }
}
