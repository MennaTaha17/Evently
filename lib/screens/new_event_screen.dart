import 'package:evently/common/widgets/custom_main_filled_button.dart';
import 'package:evently/common/widgets/custom_text_field.dart';
import 'package:evently/home/settings_tab/widgets/category_selector_view.dart';
import 'package:evently/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../common/theme/app_colors.dart';

class NewEventScreen extends StatefulWidget {
  static const String routeName = '/newEventScreen';
  NewEventScreen({super.key});

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  CategoryModel selectedCategory = CategoryModel.categories[1];
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Event'),
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategorySelectorView(
                selectedCategory: selectedCategory,
                onChange: (categories) {
                  setState(() {
                    selectedCategory = categories;
                  });
                },
              ),
              CustomTextField(
                hintText: ' Event Title',
                prefixIcon: Icon(
                  Icons.edit_note,
                  color: Theme.of(context).hoverColor,
                ),
                label: 'Title',
              ),
              CustomTextField(
                hintText: ' Event Description',
                label: 'Description',
                maxLine: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Row(
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.calendar_month_rounded,
                          color: Theme.of(context).canvasColor,
                        ),
                        Text(
                          'Event Date',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () async {
                            DateTime? date = await showDatePicker(
                              context: context,
                              initialDate: selectedDate,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2030),
                            );
                            if (date!= null) {
                              setState(() {
                                selectedDate = date;
                              });
                            }
                          },
                          child: Text(
                            _getDateText(),
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: AppColors.mainColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Row(
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Theme.of(context).canvasColor,
                        ),
                        Text(
                          'Event Time',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () async {
                            TimeOfDay? time = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if(time != null){
                              setState(() {
                                selectedTime = time;
                              });
                            }
                          },
                          child: Text(
                            _getTimeText(),
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: AppColors.mainColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomMainFilledButton(text: 'Add Event'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getDateText() {
    if (selectedDate == null) return "choose Data";
    return DateFormat.yMEd().format(selectedDate!).toString();
  }

  _getTimeText() {
    if (selectedTime == null) return "choose Time";
    return selectedTime!.format(context);
  }
}
