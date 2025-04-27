import 'package:flutter/material.dart';

import 'login_design_1.dart';
import 'login_design_2.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  final List<Widget> _screens = [const LoginScreen1(), const LoginScreen2()];

  void _navigateToScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBody: true,
      // للسماح بدمج المحتوى مع شريط التنقل السفلي
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        bottom: false, // لتمديد المحتوى أسفل شريط التنقل الشفاف
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // محتوى رئيسي
            Expanded(flex: 4, child: _screens[_currentIndex]),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05), // Glassmorphism effect
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        selectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: _currentIndex == 0
                    ? const LinearGradient(
                  colors: [Color(0xFFFFA500), Color(0xFF8A2BE2)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
                    : null,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.description, size: 24),
            ),
            label: 'Login Screen 1',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: _currentIndex == 1
                    ? const LinearGradient(
                  colors: [Color(0xFFFFA500), Color(0xFF8A2BE2)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
                    : null,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.description_outlined, size: 24),
            ),
            label: 'Login Screen 2',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _navigateToScreen,
      ),
    );
  }
}
