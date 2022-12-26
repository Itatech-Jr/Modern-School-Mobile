import 'package:flutter/material.dart';
import 'package:modern_school_mobile/app/feature/activity/widget/field_widget.dart';
import 'package:modern_school_mobile/app/share/text_style.dart';

class Calendary extends StatefulWidget {
  const Calendary({super.key, this.restorationId});

  final String? restorationId;

  @override
  State<Calendary> createState() => _CalendaryState();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _CalendaryState extends State<Calendary> with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2022, 1, 1));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        dataTimeField =
            "${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}";
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //   content: Text(
        //       'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        // ));
      });
    }
  }

  String dataTimeField = "00/00/0000";

  @override
  Widget build(BuildContext context) {
    return fieldWidget(
      width: 150,
      child: GestureDetector(
        onTap: () async {
          _restorableDatePickerRouteFuture.present();
        },
        behavior: HitTestBehavior.translucent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              dataTimeField,
              style: secondaryTextStyle,
            ),
            const Icon(
              Icons.calendar_month_sharp,
              color: Color.fromARGB(255, 19, 81, 180),
            ),
          ],
        ),
      ),
    );
  }
}
