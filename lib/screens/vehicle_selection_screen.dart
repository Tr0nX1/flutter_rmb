import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'home_screen.dart';

class VehicleSelectionScreen extends StatelessWidget {
  const VehicleSelectionScreen({super.key});

  void _selectVehicle(BuildContext context, String vehicleType) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomeScreen(vehicleType: vehicleType),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              
              Text(
                'Choose Your',
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ).animate().fadeIn(duration: 600.ms),
              
              Text(
                '2-Wheeler Type',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: const Color(0xFF00D9FF),
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 200.ms, duration: 600.ms),
              
              const SizedBox(height: 80),
              
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _selectVehicle(context, 'Scooter'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A1A1A),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xFF2A2A2A),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.moped,
                                size: 100,
                                color: const Color(0xFF00D9FF),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'SCOOTER',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Automatic',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ).animate().fadeIn(delay: 400.ms).scale(delay: 400.ms),
                    ),
                    
                    const SizedBox(width: 20),
                    
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _selectVehicle(context, 'Motorcycle'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A1A1A),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xFF2A2A2A),
                              width: 2,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.two_wheeler,
                                size: 100,
                                color: const Color(0xFF00D9FF),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'MOTORCYCLE',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Manual / Sport',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ).animate().fadeIn(delay: 600.ms).scale(delay: 600.ms),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              
              Text(
                'Select your vehicle type to get personalized service recommendations',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 800.ms),
              
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
