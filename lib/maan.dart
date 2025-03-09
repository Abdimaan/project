import 'package:flutter/material.dart';

class custom extends StatelessWidget {
  final VoidCallback onPress;
  final Icon icon;
  final String title;
  final TextStyle? titleStyle;
  // final bool isVisible;
  const custom({
    super.key,
    required this.onPress,
    required this.icon,
    required this.title,
    required this.titleStyle,
    // required this.isVisible,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 15),
        child: GestureDetector(
          onTap: onPress,
          child: AnimatedContainer(
            duration: const Duration(seconds: 2), // Animation Duration
            curve: Curves.easeOut, // Smooth animation effect
            width:  120 , // Starts small then grows
            height: 150 , // Starts small then grows
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.pink, width: 1),
              gradient: const LinearGradient(
                colors: [Colors.pink, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
