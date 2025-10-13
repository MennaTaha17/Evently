import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomDropDownButton<T> extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.items,
    this.onChanged,
    required this.label,
  });
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        DropdownButtonFormField<T>(
          isExpanded: true,
          items: items,
          onChanged: onChanged,
          icon: Icon(Icons.arrow_drop_down, color: Colors.blue),
          decoration: InputDecoration(
            border: _getBorder(),
            enabledBorder: _getBorder(),
            focusedBorder: _getBorder(),
          ),
        ),
      ],
    );
  }

  _getBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColors.mainColor),
    );
  }
}
