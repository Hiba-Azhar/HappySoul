import "package:flutter/material.dart";
import 'dart:async'; // Import for Future.delayed
import "dart:ui";
import "secondscreen.dart";

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VanishingScreen(),
    );
  }
}

class VanishingScreen extends StatefulWidget {
  @override
  _VanishingScreenState createState() => _VanishingScreenState();
}

class _VanishingScreenState extends State<VanishingScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SecondScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var fadeTween = Tween<double>(begin: 0.0, end: 1.0);
            var fadeAnimation = fadeTween.animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutQuad,
              ),
            );

            var scaleTween = Tween<double>(begin: 0.5, end: 1.0);
            var scaleAnimation = scaleTween.animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutQuad,
              ),
            );

            return FadeTransition(
              opacity: fadeAnimation,
              child: ScaleTransition(
                scale: scaleAnimation,
                child: child,
              ),
            );
          },
          transitionDuration: Duration(seconds: 3),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF61EAB8),
            Color(0xFF20AFEA),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: Container(
            color: Colors.transparent,
            child: Image.asset(
              'images/welcome.PNG',
              width: 500.0,
              height: 500.0,
            ),
          ),
        ),
      ),
    );
  }
}
