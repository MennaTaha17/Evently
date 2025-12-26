import 'package:evently/common/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.validator,
    this.prefixIcon,
    this.borderColor,
    this.hintColor,
    this.label,
    this.maxLine = 1,
    this.controlle,
    this.isPassword = false,
  });
  final String? hintText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Color? borderColor, hintColor;
  final String? label;
  final int maxLine;
  final TextEditingController? controlle;
  final bool isPassword;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isPassword = widget.isPassword;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Text(
              widget.label!,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          TextFormField(
            obscureText: isPassword,
            controller: widget.controlle,
            validator: widget.validator,
            maxLines: widget.maxLine,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).hoverColor,
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: widget.hintColor ?? Theme.of(context).hoverColor,
              ),
              prefixIcon:
                  widget.prefixIcon == null
                      ? null
                      : Padding(
                        padding: const EdgeInsets.only(right: 3, left: 16),
                        child: widget.prefixIcon,
                      ),
              suffixIcon:
                  widget.isPassword
                      ? IconButton(
                        onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                        icon: Icon(
                          isPassword
                              ? Icons.visibility_off
                              : Icons.remove_red_eye_rounded,
                        ),
                      )
                      : null,
              border: _getBorder(
                widget.borderColor ?? Theme.of(context).hintColor,
              ),
              enabledBorder: _getBorder(
                widget.borderColor ?? Theme.of(context).hintColor,
              ),
              focusedBorder: _getBorder(
                widget.borderColor ?? Theme.of(context).hintColor,
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
