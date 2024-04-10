import 'package:flutter/material.dart';

class NoInternetOverLay {
  static OverlayEntry? _currentOverlayEntry;

  static void showOverlay(BuildContext context, String text) {
    // Ensure any previous overlay is removed
    if (_currentOverlayEntry != null) {
      _currentOverlayEntry!.remove();
      _currentOverlayEntry = null;
    }

    _currentOverlayEntry = OverlayEntry(
      builder: (BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(10),
            child: Material(
              child: Container(
                margin:
                    EdgeInsets.only(top: 100, bottom: 50, left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      text,
                      style: const TextStyle(fontSize: 22, color: Colors.grey),
                    ),
                    Text("Please check your internet setting"),
                    Image.asset(
                      'assets/images/no_internet.png', // Path to your image
                      width: 200, // Set desired width
                      height: 150, // Set desired height
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    // Find the overlay in the widget tree and insert the overlay entry.
    Overlay.of(context).insert(_currentOverlayEntry!);
  }

  static void removeOverlay() {
    if (_currentOverlayEntry != null) {
      _currentOverlayEntry!.remove();
      _currentOverlayEntry = null;
    }
  }
}
