import 'package:evently/common/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.validator,
    this.prefixIcon,
    this.borderColor,
    this.hintColor,
    this.label,  this.maxLine =1,
  });
  final String? hintText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Color? borderColor, hintColor;
  final String? label;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Text(
              label!,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          TextFormField(
            validator: validator,
            maxLines: maxLine ,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).hoverColor,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: hintColor ?? Theme.of(context).hoverColor,
              ),
              prefixIcon:
                  prefixIcon == null
                      ? null
                      : Padding(
                        padding: const EdgeInsets.only(right: 3,left: 16),
                        child: prefixIcon,
                      ),
              border: _getBorder(borderColor ?? Theme.of(context).hintColor),
              enabledBorder: _getBorder(
                borderColor ?? Theme.of(context).hintColor,
              ),
              focusedBorder: _getBorder(
                borderColor ?? Theme.of(context).hintColor,
              ),
              errorBorder: _getBorder(AppColors.redColor),
            ),
          ),
        ],
      ),
    );
  }

  _getBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color),
    );
  }
}
