import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pinput/pinput.dart';
import 'vehicle_selection_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showOTPField = false;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  void _sendOTP() {
    if (phoneController.text.isNotEmpty) {
      setState(() {
        showOTPField = true;
      });
    }
  }

  void _verifyOTP() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const VehicleSelectionScreen()),
    );
  }

  void _skipAuth() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const VehicleSelectionScreen()),
    );
  }

  void _googleSignIn() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const VehicleSelectionScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF2A2A2A)),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              
              Icon(
                Icons.two_wheeler_rounded,
                size: 80,
                color: const Color(0xFF00D9FF),
              ).animate().fadeIn(duration: 600.ms).scale(),
              
              const SizedBox(height: 30),
              
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 200.ms),
              
              const SizedBox(height: 10),
              
              Text(
                'Sign in to continue',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 300.ms),
              
              const SizedBox(height: 50),
              
              if (!showOTPField) ...[
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Enter phone number',
                    prefixIcon: Icon(Icons.phone, color: Color(0xFF00D9FF)),
                  ),
                ).animate().fadeIn(delay: 400.ms).slideX(begin: -0.2, end: 0),
                
                const SizedBox(height: 20),
                
                ElevatedButton(
                  onPressed: _sendOTP,
                  child: const Text('Send OTP'),
                ).animate().fadeIn(delay: 500.ms).scale(),
              ] else ...[
                Text(
                  'Enter OTP sent to ${phoneController.text}',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 30),
                
                Pinput(
                  controller: otpController,
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: const Color(0xFF00D9FF), width: 2),
                    ),
                  ),
                  onCompleted: (pin) => _verifyOTP(),
                ),
                
                const SizedBox(height: 20),
                
                ElevatedButton(
                  onPressed: _verifyOTP,
                  child: const Text('Verify OTP'),
                ),
                
                const SizedBox(height: 15),
                
                TextButton(
                  onPressed: () {
                    setState(() {
                      showOTPField = false;
                      otpController.clear();
                    });
                  },
                  child: const Text(
                    'Change Phone Number',
                    style: TextStyle(color: Color(0xFF00D9FF)),
                  ),
                ),
              ],
              
              const SizedBox(height: 30),
              
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey[800])),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'OR',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey[800])),
                ],
              ).animate().fadeIn(delay: 600.ms),
              
              const SizedBox(height: 30),
              
              OutlinedButton.icon(
                onPressed: _googleSignIn,
                icon: const Icon(Icons.g_mobiledata, size: 28),
                label: const Text('Continue with Google'),
              ).animate().fadeIn(delay: 700.ms).scale(),
              
              const SizedBox(height: 20),
              
              OutlinedButton.icon(
                onPressed: _skipAuth,
                icon: const Icon(Icons.arrow_forward),
                label: const Text('Continue as Guest'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF00D9FF), width: 2),
                  foregroundColor: const Color(0xFF00D9FF),
                ),
              ).animate().fadeIn(delay: 800.ms).scale(),
              
              const SizedBox(height: 40),
              
              Text(
                'By continuing, you agree to our Terms & Privacy Policy',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 900.ms),
            ],
          ),
        ),
      ),
    );
  }
}
