import 'package:flutter/material.dart';

import '../utils/styles.dart';

class ErrorWidgetWhenFetchData extends StatelessWidget {
  final String errorMsg;
  const ErrorWidgetWhenFetchData({super.key, required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMsg,
        style: Styles.defaultTextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
