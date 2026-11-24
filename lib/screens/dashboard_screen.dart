  import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Top Royal Purple Header Banner
          Container(
            color: AppColors.primaryPurple,
            child: SafeArea(
              bottom: false,
              child: Container(
                height: 64,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    // Balances right icons so Dashboard title stays centered
                    const SizedBox(width: 64),
                    Expanded(
                      child: Text(
                        'Dashboard',
                        textAlign: TextAlign.center,
                        style: textTheme.headlineSmall,
                      ),
                    ),
                    // Notification Bell with Stack + Positioned unread indicator
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Icon(
                          Icons.notifications,
                          color: AppColors.iconBlack,
                          size: 26,
                        ),
                        Positioned(
                          top: 1,
                          right: 2,
                          child: Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                              color: AppColors.badgeCoral,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.primaryPurple,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    const Icon(
                      Icons.search,
                      color: AppColors.iconBlack,
                      size: 26,
                    ),
                  ],
                ),
              ),
            ),
          ),

          const Spacer(flex: 1),

          // Four Dashboard Action Cards
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                _DashboardMenuCard(
                  icon: Icons.edit_outlined,
                  label: 'Course',
                ),
                SizedBox(height: 44),
                _DashboardMenuCard(
                  icon: Icons.access_time,
                  label: 'Schedule',
                ),
                SizedBox(height: 44),
                _DashboardMenuCard(
                  icon: Icons.playlist_add_check,
                  label: 'Grades',
                ),
                SizedBox(height: 44),
                _DashboardMenuCard(
                  label: 'Announcement',
                  isWide: true,
                ),
              ],
            ),
          ),

          const Spacer(flex: 1),

          // Bottom Navigation Bar Row
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(38, 8, 38, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: AppColors.primaryPurple,
                      size: 24,
                    ),
                  ),
                  const Icon(
                    Icons.home,
                    color: AppColors.primaryPurple,
                    size: 28,
                  ),
                  const Icon(
                    Icons.person_outline,
                    color: AppColors.primaryPurple,
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DashboardMenuCard extends StatelessWidget {
  final IconData? icon;
  final String label;
  final bool isWide;

  const _DashboardMenuCard({
    this.icon,
    required this.label,
    this.isWide = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: EdgeInsets.symmetric(horizontal: isWide ? 0.0 : 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: AppColors.primaryPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(
              icon,
              color: AppColors.iconBlack,
              size: 24,
            ),
          Expanded(
            child: Center(
              child: Text(
                label,
                style: Theme.of(context).textTheme.labelLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (icon != null) const SizedBox(width: 24),
        ],
      ),
    );
  }
}
