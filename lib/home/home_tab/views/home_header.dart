import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/gen/assets.gen.dart';
import 'package:evently/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back ✨',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightBgColor,
                      ),
                    ),
                    Text(
                      'John Safwat',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightBgColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.lightBgColor,
                          size: 24,
                        ),
                        Text(
                          'Cairo , Egypt',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.lightBgColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 33,
                  width: 33,
                  child: IconButton(
                    style: IconButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {},
                    icon: Assets.images.svg.sun.svg(),
                  ),
                ),
                SizedBox(width: 5),
                SizedBox(
                  width: 33,
                  height: 33,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: AppColors.lightBgColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'EN',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(
                              context,
                            ).bottomNavigationBarTheme.backgroundColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FilterView(),
          ],
        ),
      ),
    );
  }
}
class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  int selectedId = CategoryModel.categories.first.id;
  @override
  Widget build(BuildContext context) {
    List categories = CategoryModel.categories;
    return  SizedBox(
      height: 40,
      child: ListView.separated(
        itemBuilder: (context, index) {
          CategoryModel currentCat = categories[index];
          bool isSelected = selectedId == currentCat.id;
          return FilterChip(
            padding: EdgeInsets.zero,
            backgroundColor:
            Theme.of(
              context,
            ).bottomNavigationBarTheme.backgroundColor,
            selectedColor: Theme.of(context).focusColor,
            selected: isSelected,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(46),
            ),
            side:
            isSelected
                ? null
                : BorderSide(color: Theme.of(context).focusColor),
            showCheckmark: false,
            label: Row(
              spacing: 5,
              children: [
                Icon(
                  currentCat.icon,
                  color:
                  isSelected
                      ? Theme.of(context).splashColor
                      : AppColors.lightBgColor,
                ),
                Text(
                  currentCat.title,
                  style: TextStyle(
                    color:
                    isSelected
                        ? Theme.of(context).splashColor
                        : AppColors.lightBgColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            onSelected: (value) {
              setState(() {
                selectedId = currentCat.id;
              });
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 8);
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

