import 'package:flutter/material.dart';

class AppUtils {
  static final AppUtils _instance = AppUtils._internal();

  factory AppUtils() {
    return _instance;
  }

  AppUtils._internal();


  SnackBar successSnackBar(BuildContext context,text) => SnackBar(
    backgroundColor: Colors.green[400],
    content: Row(
      children: [
        Icon(
          Icons.check_circle,
          color: Colors.white,
          size: 24,
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            'Successful! $text',
            overflow: TextOverflow.clip,
          ),
        ),
      ],
    ),
    action: SnackBarAction(
      textColor: Colors.white,
      label: 'Got it',
      onPressed: () {},
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    margin: const EdgeInsets.all(20),
    duration: const Duration(seconds: 3),
  );

  SnackBar failedSnackBar(BuildContext context,text) => SnackBar(
    backgroundColor: Colors.red[600],
    content: Row(
      children: [
        Icon(
          Icons.error,
          color: Colors.white,
          size: 24,
        ),
        const SizedBox(width: 10),
        Flexible(
            child: Text(
                'Failed! $text',
              overflow: TextOverflow.clip,
            ),
        ),
      ],
    ),
    action: SnackBarAction(
      textColor: Colors.white,
      label: 'Got it',
      onPressed: () {},
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    margin: const EdgeInsets.all(20),
    duration: const Duration(seconds: 3),
  );
}
extension SnackBarContext on BuildContext {
  void showSuccessSnackBar(text) {
    ScaffoldMessenger.of(this).showSnackBar(AppUtils().successSnackBar(this,text));
  }

  void showFailedSnackBar(text) {
    ScaffoldMessenger.of(this).showSnackBar(AppUtils().failedSnackBar(this,text));
  }
}