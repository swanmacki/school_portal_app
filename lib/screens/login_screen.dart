import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 2),

              // Student ID Illustration + Stack & Positioned Status Badge
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 168,
                      height: 168,
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        'assets/images/school_portal_logo.png',
                        width: 160,
                        height: 160,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      bottom: -4,
                      right: -6,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryPurple,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.background,
                            width: 2,
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.verified_user,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'STUDENT',
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // App Title
              Text(
                'School Portal',
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium,
              ),

              const Spacer(flex: 2),

              // Section Label ("Sign-Up")
              Padding(
                padding: const EdgeInsets.only(left: 4.0, bottom: 16.0),
                child: Text(
                  'Sign-Up',
                  style: textTheme.titleMedium,
                ),
              ),

              // Email Input Pill
              const _PortalInputPill(
                placeholder: 'Email',
                trailingIcon: Icons.close,
              ),

              const SizedBox(height: 18),

              // Password Input Pill
              const _PortalInputPill(
                placeholder: 'Password',
                trailingIcon: Icons.visibility_off_outlined,
              ),

              const SizedBox(height: 10),

              // Forgot Password Link Text
              Text(
                'Forgot Password?',
                textAlign: TextAlign.center,
                style: textTheme.bodySmall,
              ),

              const SizedBox(height: 18),

              // Log In Button Pill
              Center(
                child: Container(
                  width: 210,
                  height: 46,
                  decoration: BoxDecoration(
                    color: AppColors.loginButtonBlue,
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(
                      color: AppColors.borderDark,
                      width: 1.1,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Log In',
                    style: textTheme.titleMedium?.copyWith(
                      color: AppColors.textDark,
                    ),
                  ),
                ),
              ),

              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}

class _PortalInputPill extends StatelessWidget {
  final String placeholder;
  final IconData trailingIcon;

  const _PortalInputPill({
    required this.placeholder,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: AppColors.inputFillWhite,
        borderRadius: BorderRadius.circular(23),
        border: Border.all(
          color: AppColors.borderDark,
          width: 1.1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              placeholder,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(
            trailingIcon,
            size: 19,
            color: AppColors.textMuted,
          ),
        ],
      ),
    );
  }
}
