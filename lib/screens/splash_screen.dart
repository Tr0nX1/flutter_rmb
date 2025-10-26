import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const AuthScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF000000), Color(0xFF1A1A1A)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.two_wheeler_rounded,
                size: 120,
                color: const Color(0xFF00D9FF),
              ).animate()
                .fadeIn(duration: 600.ms)
                .scale(delay: 200.ms, duration: 500.ms),
              
              const SizedBox(height: 30),
              
              Text(
                'BIKE REPAIR',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              ).animate()
                .fadeIn(delay: 400.ms, duration: 600.ms)
                .slideY(begin: 0.3, end: 0, delay: 400.ms),
              
              const SizedBox(height: 10),
              
              Text(
                'MASTERS',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  letterSpacing: 2,
                  color: const Color(0xFF00D9FF),
                ),
              ).animate()
                .fadeIn(delay: 600.ms, duration: 600.ms),
              
              const SizedBox(height: 50),
              
              const SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF00D9FF)),
                ),
              ).animate(onPlay: (controller) => controller.repeat())
                .fadeIn(delay: 800.ms),
            ],
          ),
        ),
      ),
    );
  }
}
