import 'package:flutter/material.dart';
import 'package:amena_s_application4/core/utils/navigator_service.dart';

class ProgressDialogUtils {
  // Flag to track the visibility of the progress dialog
  static bool isProgressVisible = false;

  /// Common method for showing a progress dialog
  static void showProgressDialog({
    BuildContext? context,
    bool isCancellable = false,
  }) async {
    // Show the dialog only if it is not already visible
    if (!isProgressVisible &&
        NavigatorService.navigatorKey.currentState?.overlay?.context != null) {
      showDialog(
        barrierDismissible: isCancellable, // Allow dialog dismissal
        context: NavigatorService.navigatorKey.currentState!.overlay!.context,
        builder: (BuildContext context) {
          return Center(
            child: CircularProgressIndicator.adaptive(
              strokeWidth: 4,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          );
        },
      );
      isProgressVisible = true; // Set the progress dialog visibility to true
    }
  }

  /// Common method for hiding the progress dialog
  static void hideProgressDialog() {
    // Hide the progress dialog if it is visible
    if (isProgressVisible) {
      Navigator.pop(NavigatorService.navigatorKey.currentState!.overlay!.context);
      isProgressVisible = false; // Set the progress dialog visibility to false
    }
  }
}
