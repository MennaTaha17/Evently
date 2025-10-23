import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/common/widgets/custom_drop_down_button.dart';
import 'package:evently/home/settings_tab/widgets/settings_header.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: CustomDropDownButton<String>(
            label: "language", // ToDo Localization
            items: [
              DropdownMenuItem(
                child: Text(
                  "Arabic", // ToDo Localization
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: "ar", // ToDo Localization
              ),
              DropdownMenuItem(
                child: Text(
                  "English", // ToDo Localization
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: "en", // ToDo Localization
              ),
            ],
            onChanged: (p0) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: CustomDropDownButton<String>(
            label: "Themes", // ToDo Localization
            items: [
              DropdownMenuItem(
                child: Text(
                  "Dark", // ToDo Localization
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: "ar", // ToDo Localization
              ),
              DropdownMenuItem(
                child: Text(
                  "Light", // ToDo Localization
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: "en",
              ),
            ],
            onChanged: (p0) {},
          ),
        ),
      ],
    );
  }
}

