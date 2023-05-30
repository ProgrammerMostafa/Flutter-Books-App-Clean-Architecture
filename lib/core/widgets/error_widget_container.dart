import 'package:flutter/material.dart';

import '../utils/app_strings.dart';

class ErrorWidgetContainer extends StatelessWidget {
  const ErrorWidgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.warning_amber_rounded,
          color: Colors.orange,
          size: 60,
        ),
        const SizedBox(height: 15),
        Text(
          AppStrings.somethingWrong,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          AppStrings.pleaseTryAgain,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
