import 'dart:ui';
import 'package:flutter/material.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 750,
          child: Stack(
            children: [
              // Background spheres
              Positioned(
                top: 100,
                left: 50,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(shape: BoxShape.circle, gradient: RadialGradient(colors: [Color(0xFFAA55FF), Color(0xFF6600CC)])),
                ),
              ),
              Positioned(
                right: 20,
                top: 150,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(shape: BoxShape.circle, gradient: RadialGradient(colors: [Color(0xFFAA55FF), Color(0xFF6600CC)])),
                ),
              ),
              Positioned(
                bottom: 120,
                right: 30,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: const BoxDecoration(shape: BoxShape.circle, gradient: RadialGradient(colors: [Color(0xFFFF9944), Color(0xFFFF6600)])),
                ),
              ),
              Positioned(
                bottom: 250,
                left: 40,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(shape: BoxShape.circle, gradient: RadialGradient(colors: [Color(0xFFFF9944), Color(0xFFFF6600)])),
                ),
              ),
              // Login Card
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: 450,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.white.withValues(alpha: 0.2), width: 1.5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Login', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                          const SizedBox(height: 8),
                          Text(
                            'Welcome back please login to your account',
                            style: TextStyle(fontSize: 12, color: Colors.white.withValues(alpha: 0.7)),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 32),

                          // Username field
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                              filled: true,
                              fillColor: Colors.white.withValues(alpha: 0.1),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              suffixIcon: const Icon(Icons.person_outline, color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Password field
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                              filled: true,
                              fillColor: Colors.white.withValues(alpha: 0.1),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              suffixIcon: const Icon(Icons.visibility_off, color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Remember me checkbox
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(color: const Color(0xFFFF5533), borderRadius: BorderRadius.circular(4)),
                                child: const Icon(Icons.check, size: 16, color: Colors.white),
                              ),
                              const SizedBox(width: 8),
                              Text('Remember me', style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 12)),
                            ],
                          ),
                          const SizedBox(height: 24),

                          // Login button
                          Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: const LinearGradient(
                                colors: [Color(0xFFFF5533), Color(0xFFAA55FF)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: const Center(child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))),
                          ),
                          const SizedBox(height: 16),

                          // Forgot password
                          Text('Forgot Password?', style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12)),
                          const SizedBox(height: 24),

                          // Sign up link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account? ', style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12)),
                              const Text('Signup', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
