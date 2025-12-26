import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';
import '../../../models/category_model.dart';

class CategorySelectorView extends StatelessWidget {
  CategorySelectorView({super.key, required this.selectedCategory,required this.onChange});
  final List<CategoryModel> categories = CategoryModel.categories.sublist(1);
  final CategoryModel selectedCategory;
  final void Function(CategoryModel) onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        spacing: 16,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(selectedCategory.designPath!),
          ),
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                CategoryModel currentCat = categories[index];
                bool isSelected = currentCat.id == selectedCategory.id;
                return FilterChip(
                  padding: EdgeInsets.zero,
                  backgroundColor:
                      isSelected?AppColors.mainColor:Theme.of(context).scaffoldBackgroundColor,
                  selectedColor: AppColors.mainColor,
                  selected: isSelected,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(46),
                  ),
                  side:
                      isSelected
                          ? null
                          : BorderSide(color: AppColors.mainColor),
                  showCheckmark: false,
                  label: Row(
                    spacing: 5,
                    children: [
                      Icon(
                        currentCat.icon,
                        color:
                            isSelected
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.mainColor,
                      ),
                      Text(
                        currentCat.title,
                        style: TextStyle(
                          color:
                              isSelected
                                  ?  Theme.of(context).scaffoldBackgroundColor
                                  : AppColors.mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  onSelected: (value) {
                    if(value){
                      onChange(currentCat);
                    }
  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10);
              },
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
