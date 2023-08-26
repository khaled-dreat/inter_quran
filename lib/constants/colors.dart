import 'package:flutter/material.dart';

import '../models/mushaf_backgrund_model.dart';

/// App Colors
class AppColors {
  AppColors._();

  static const Color white = Color(0xFFFFFFFF);
  static const Color white2 = Color(0xFFFCF6E5);
  static const Color white3 = Color(0xFFF1F2F5);
  static const Color pink = Color(0xFFFCE9E9);
  static const Color white5 = Color(0xFFD9D9D9);
  static const Color grey =Color(0xFFFFFFFF);
  static const Color grey2 = Color(0xFFB39DDB);
  static const Color grey3 = Color(0xFFD1C4E9);
  static const Color grey4 = Color(0xFF7E57C2);
  static const Color grey5 = Color(0xFF673AB7);
  static const Color grey6 = Color(0xFFFFFFFF);
  static const Color grey7 = Color(0xFF512DA8);
  static const Color grey8 = Color(0xFF4527A0);
  static const Color grey9 = Color(0xFF311B92);
  static const Color grey10 = Color(0xFF1A237E);
  static const Color grey11 = Color(0xFF3F51B5);
  static const Color grey12 = Color(0xFFFFFFFF);
  static const Color grey13 =  Color(0xFFFFFFFF);
  static const Color greyText = Color(0xFF323640);
  static const Color black11 = Color(0xFFBBDEFB);
  static const Color black10 =Color(0xFFBBDEFB);
  static const Color black9 = Color(0xFF90CAF9);
  static const Color black8 = Color(0xFF64B5F6);
  static const Color black7 =Color(0xFF42A5F5);
  static const Color black6 = Color(0xFF2196F3);
  static const Color black5 = Color(0xFF1E88E5);
  static const Color black4 = Color(0xFF1976D2);
  static const Color black3 = Color(0xFF1565C0);
  static const Color black2 = Color(0xFF0D47A1);
  static const Color black1 = Color(0xFF0B3C8C);
  static const Color black = Color(0xFF0A2C6B);
  static const Color oasis = Color(0xFFFFF1CA);
  static const Color oil = Color(0xFF261A1A);
  static const Color reddish = Color(0xFFC84646);
  static const Color zeus = Color(0xFF26211A);
  static const Color brandy = Color(0xFFE3BE92);
  static const Color redOrange = Color(0xFFFF3B30);
  static const Color redDark = Color(0xFF923131);

  static const Color blue1 = Color(0xFFFFF9C4);
  static const Color blue2 = Color(0xFFFFF59D);
  static const Color blue3 = Color(0xFFFFF176);
  static const Color blue4 = Color(0xFFFFEE58);
  static const Color blue5 = Color(0xFFFDD835);
  static const Color blue6 = Color(0xFFFBC02D);
  static const Color blue7 = Color(0xFFF9A825);
  static const Color blue8 = Color(0xFFF57F17);
  static const Color blue9 = Color(0xFFEF6C00);
  static const Color blue10 = Color(0xFFE65100);
  static const Color blue11 = Color(0xFFBF360C);
  static const Color blue12 = Color(0xFF3E2723);

  // static const Color black11 = Color(0xFF262626);
  // static const Color black10 = Color(0xFF1D1D1D);
  // static const Color black9 = Color(0xFF424242);
  // static const Color black8 = Color(0xFF393939);
  // static const Color black7 = Color(0xFF363636);
  // static const Color black6 = Color(0xFF2E2E2E);
  // static const Color black5 = Color(0xFF232323);
  // static const Color black4 = Color(0xFF202020);
  // static const Color black3 = Color(0xFF1A1A1A);
  // static const Color black2 = Color(0xFF181818);
  // static const Color black1 = Color(0xFF111111);
  // static const Color black = Color(0xFF010101);
  /// Surah details page theme model list
  static List<SurahDetailsPageThemeModel> mushafColors = [
    SurahDetailsPageThemeModel(
      backgroundColor: const  Color(0xFF1A237E),
      switchSelectColor: const Color(0xFF1A1A1A),
      switchUnselectTextColor: const Color(0xFFA5A5A5),
      switchBackgroundColor: const Color(0xFF010101),
      titleVectorColor: const Color(0xFF4D4D4D),
      textColor: const Color(0xFFD1D1D1),
      transparentVectorColor: const Color(0xFFA8A2A2),
      transparentTextColor: const Color(0xFFA8A2A2),
    ),
    SurahDetailsPageThemeModel(
      backgroundColor: const Color(0xFFFFF1CA),
      switchSelectColor: const Color(0xFFE0CCA8),
      switchUnselectTextColor: const Color(0xFFB39B74),
      switchBackgroundColor: const Color(0xFFF2E0C1),
      titleVectorColor: const Color(0xFF4D4D4D),
      textColor: const Color(0xFF2B1F0D),
      transparentVectorColor: const Color(0xFF4D4D4D),
      transparentTextColor: const Color(0xFF4D4D4D),
    ),
    SurahDetailsPageThemeModel(
      backgroundColor: const Color(0xFFF1F2F5),
      switchSelectColor: const Color(0xFFB6B9C3),
      switchUnselectTextColor: const Color(0xFF93959A),
      switchBackgroundColor: const Color(0xFFD9DADD),
      titleVectorColor: const Color(0xFF4D4D4D),
      textColor: const Color(0xFF323640),
      transparentVectorColor: Colors.black,
      transparentTextColor: Colors.black,
    ),
    SurahDetailsPageThemeModel(
      backgroundColor:Colors.yellow,
      switchSelectColor: const Color(0xFFDDC9A5),
      switchUnselectTextColor: const Color(0xFFB39B74),
      switchBackgroundColor: const Color(0xFFF1E4CE),
      titleVectorColor: const Color(0xFF4D4D4D),
      textColor: const Color(0xFF2B1F0D),
      transparentVectorColor: Colors.brown,
      transparentTextColor:  Colors.brown,
    ),

    SurahDetailsPageThemeModel(
      backgroundColor: Colors.greenAccent,
      switchSelectColor: const Color(0xFFC0AFAF),
      switchUnselectTextColor: const Color(0xFF9D9595),
      switchBackgroundColor: const Color(0xFFE2D3D3),
      titleVectorColor: const  Color(0xFF2B1F0D),
      textColor: const Color(0xFF2B1F0D),
      transparentVectorColor: Colors.brown,
      transparentTextColor: Colors.brown,
    )
  ];
}
