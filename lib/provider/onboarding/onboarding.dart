import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  int _currentPage = 0;

  // Getter for the current page
  int get currentPage => _currentPage;

  // Update to a specific page
  void updatePage(int pageIndex) {
    _currentPage = pageIndex;
    notifyListeners();
  }

  // Move to the next page
  void nextPage() {
    _currentPage++;
    notifyListeners();
  }
}
