import 'package:flutter/material.dart';
import 'theme/app_colors.dart';

class ThemeTestPage extends StatelessWidget {
  const ThemeTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cek Tema & Tipografi'),
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- BAGIAN 1: CEK TIPOGRAFI ---
            Text('1. Cek Tipografi (Plus Jakarta Sans)', style: textTheme.titleMedium),
            const Divider(),
            Text('Headline Medium - Sign in', style: textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text('Title Medium - Sub Judul', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            Text('Label Large - Email & Password', style: textTheme.labelLarge),
            const SizedBox(height: 8),
            Text('Body Medium - sampleemail@gmail.com', style: textTheme.bodyMedium),
            const SizedBox(height: 8),
            Text('Body Small - Remember me / Or Login with', style: textTheme.bodySmall),

            const SizedBox(height: 32),

            // --- BAGIAN 2: CEK WARNA ---
            Text('2. Cek Palet Warna', style: textTheme.titleMedium),
            const Divider(),
            _colorBox('Primary Biru', AppColors.primaryBiru, AppColors.basePutih),
            _colorBox('Secondary Biru', AppColors.secondaryBiru, AppColors.basePutih),
            _colorBox('Base Kuning', AppColors.baseKuning, AppColors.primaryTeks),
            _colorBox('Base Abu (Input)', AppColors.baseAbu, AppColors.primaryTeks),
            _colorBox('Muted Stroke', AppColors.mutedStroke, AppColors.primaryTeks),
            _colorBox('Sukses (Base + Teks)', AppColors.baseSukses, AppColors.hijauSukses),
            _colorBox('Error (Base + Teks)', AppColors.baseError, AppColors.merahError),
          ],
        ),
      ),
    );
  }

  Widget _colorBox(String label, Color bgColor, Color textColor) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.mutedStroke.withValues(alpha: 0.4)),
      ),
      child: Text(
        label,
        style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}