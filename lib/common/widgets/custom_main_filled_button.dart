import 'package:evently/common/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomMainFilledButton extends StatelessWidget {
  const CustomMainFilledButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: FilledButton(
              style: FilledButton.styleFrom(backgroundColor: AppColors.mainColor,shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.lightBgColor,
                  decorationColor: AppColors.mainColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
