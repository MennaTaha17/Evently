import 'package:evently/common/network/auth_service.dart';
import 'package:evently/models/user_model.dart';
import 'package:evently/screens/auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../common/theme/app_colors.dart';
import '../../common/widgets/custom_main_filled_button.dart';
import '../../common/widgets/custom_outlined_button.dart';
import '../../common/widgets/custom_text_field.dart';
import '../../gen/assets.gen.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signUpScreen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool isLoading =false;
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _globalKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.images.png.imEvently.image(height: 140, width: 140),
                Text(
                  'Evently', //TODo localization
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainColor,
                  ),
                ),
                CustomTextField(
                  controlle: nameController,
                  hintText: 'name', //TODo localization
                  prefixIcon: Assets.images.svg.personIcon.svg(
                    color: Theme.of(context).hoverColor,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return 'name is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controlle: emailController,
                  hintText: 'Email', //TODo localization
                  prefixIcon: Assets.images.svg.icEmail.svg(
                    color: Theme.of(context).hoverColor,
                  ),
                  validator: (value) {
                    bool validateEmail() => RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    ).hasMatch(value ?? '');
                    if (value!.isEmpty || value == null) {
                      return 'Password is required';
                    }
                    else if(!validateEmail()){
                      return'invalid email';}
                  },
                ),
                SizedBox(height: 16),
                CustomTextField(
                  isPassword: true,
                  controlle: passwordController,
                  hintText: 'Password', //TODo localization
                  prefixIcon: Assets.images.svg.icPassword.svg(
                    color: Theme.of(context).hoverColor,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return 'Password is required';
                    }
                    if (value.length < 8) {
                      return 'password must ba at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controlle: confirmPasswordController,
                  isPassword: true,
                  hintText: 'Confirm Password', //TODo localization
                  prefixIcon: Assets.images.svg.icEmail.svg(
                    color: Theme.of(context).hoverColor,
                  ),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return 'Confirm Password is required';
                    }
                    if (value != passwordController.text) {
                      return 'password doesn\'t match';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
               if(isLoading)
                 CircularProgressIndicator()
               else CustomMainFilledButton(
                  onPressed: () async{
                    setState(() {
                      isLoading = true;
                    });
                    if (_globalKey.currentState!.validate()) {
                      try{
                        await AuthService.register(
                          UserModel(
                            email: emailController.text,
                            name: nameController.text,
                          ),
                          passwordController.text,
                        );
                        Fluttertoast.showToast(msg: 'Seccess');
                        setState(() {
                          isLoading = false;
                        });
                        Navigator.pop(context);
                      }catch(e){
                        Fluttertoast.showToast(msg: 'Error:$e');
                        setState(() {
                          isLoading = false;
                        });
                      }
                    }
                  },
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
                                Navigator.of(context).pop();
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
      ),
    );
  }
}
