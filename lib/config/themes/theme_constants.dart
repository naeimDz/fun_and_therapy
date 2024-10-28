import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';
import '../constants/app_text_styles.dart';

class AppTheme {
  /// A light theme for App
  static ThemeData get lightTheme => ThemeData(
      textTheme: ThemeData.light()
          .textTheme
          .apply(fontFamily: AppTextStyles.fontFamily),
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      cardColor: AppColors.cardColor,
      canvasColor: AppColors.cardColor,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: AppDefaults.borderRadius,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppDefaults.borderRadius,
          borderSide: const BorderSide(
            color: AppColors.primary,
          ),
        ),
        fillColor: AppColors.cardColor,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.scaffoldBackground,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: AppColors.scaffoldBackground,
        ),
        iconTheme: IconThemeData(color: AppColors.primary),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: AppTextStyles.fontFamily,
        ),
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.all(AppDefaults.padding),
          shape: RoundedRectangleBorder(
            borderRadius: AppDefaults.borderRadius,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.all(AppDefaults.padding),
          shape: RoundedRectangleBorder(
            borderRadius: AppDefaults.borderRadius,
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            color: AppColors.primary,
            width: 2,
          ),
        ),
        labelPadding: const EdgeInsets.symmetric(
          horizontal: AppDefaults.padding,
          vertical: AppDefaults.padding / 1.15,
        ),
        labelColor: AppColors.primary,
        unselectedLabelColor: AppColors.cardColorDark.withOpacity(0.5),
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: const TextStyle(
          fontFamily: AppTextStyles.fontFamily,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle:
            const TextStyle(fontFamily: AppTextStyles.fontFamily),
      ));

  /// A Dark theme for App
  static ThemeData get darkTheme => ThemeData(
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: AppTextStyles.fontFamily,
              displayColor: Colors.white,
              bodyColor: Colors.white,
            ),
        cardColor: AppColors.cardColorDark,
        scaffoldBackgroundColor: AppColors.scaffoldBackgrounDark,
        canvasColor: AppColors.cardColorDark,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: AppDefaults.borderRadius,
            borderSide: const BorderSide(
              color: AppColors.primary,
            ),
          ),
          fillColor: AppColors.cardColorDark,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: const TextStyle(color: AppColors.placeholder),
          iconColor: AppColors.placeholder,
          hintStyle: const TextStyle(color: AppColors.placeholder),
        ),
        iconTheme: const IconThemeData(color: AppColors.primary),
        listTileTheme: const ListTileThemeData(iconColor: AppColors.primary),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.scaffoldBackgrounDark,
          elevation: 0,
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            systemNavigationBarColor: AppColors.scaffoldBackgrounDark,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: AppTextStyles.fontFamily,
          ),
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: AppColors.primary,
            padding: const EdgeInsets.all(AppDefaults.padding),
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary),
            padding: const EdgeInsets.all(AppDefaults.padding),
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.primary,
            ),
          ),
          labelPadding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: AppDefaults.padding / 1.15,
          ),
          labelColor: AppColors.primary,
          unselectedLabelColor: AppColors.cardColor.withOpacity(0.5),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: const TextStyle(
            fontFamily: AppTextStyles.fontFamily,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle:
              const TextStyle(fontFamily: AppTextStyles.fontFamily),
        ),
      );
}
