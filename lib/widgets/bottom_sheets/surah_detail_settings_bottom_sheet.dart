import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:international_Quran/constants/constants.dart';

import '../../providers/quran_provider.dart';
import '../../screens/quran_translation_screen.dart';
import '../background_color_select.dart';
import '../buttons/layout_options_toggle_buttons.dart';
import '../buttons/quran_font_button.dart';
import '../buttons/read_options_toggle_buttons.dart';
import '../buttons/sound_drop_down_button.dart';
import '../buttons/translation_box.dart';
import '../surah_size_slider.dart';

class SurahDetailSettingsBottomSheet extends StatelessWidget {
  const SurahDetailSettingsBottomSheet({super.key});

  static show(BuildContext context) {
    return showMaterialModalBottomSheet(
        context: context,
        builder: (_) => const SurahDetailSettingsBottomSheet(),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(kSizeXXL),
          ),
        ),
        backgroundColor: context.theme.primaryColor);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      padding: const EdgeInsets.only(top: kSizeL),
      child: Column(
        children: [
          Container(
            height: kSizeS * 1.5,
            width: kSize3XL * 5,
            decoration: BoxDecoration(color: context.theme.cardColor, borderRadius: BorderRadius.circular(kSizeXXL)),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: kSize3XL, vertical: kSizeXL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReadOptionsToggleButton(
                  isPopUp: false,
                  listType: context.watch<QuranProvider>().localSetting.readOptions,
                  onValueChanged: context.read<QuranProvider>().changeReadingType,
                ),
                SurahSizeSlider(
                  isPopUp: false,
                  size: context.watch<QuranProvider>().localSetting.textScaleFactor,
                  onChanged: context.read<QuranProvider>().changeFontSize,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuranFontButton(
                      selectedFont: context.watch<QuranProvider>().localSetting.fontTypeArabic,
                      onChangeArabicFont: context.watch<QuranProvider>().changeFontTypeArabic,
                    ),
                    LayoutOptionsToggleButton(
                      isPopUp: false,
                      layoutOptions: context.watch<QuranProvider>().localSetting.layoutOptions,
                      onChanged: context.read<QuranProvider>().changeLayoutOptions,
                    ),
                  ],
                ),
                const SoundDropDown(),
                TranslationBox(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const QuranTranslationsScreen();
                      },
                    ));
                  },
                ),
                BackgroundColorSelect(
                  colors:const [
                    Color(0xFF1A237E),
                    Color(0xFFFFF1CA),
                    Color(0xFFF1F2F5),
                    Colors.yellowAccent,
                    Colors.greenAccent],
                  defaultIndex: context.watch<QuranProvider>().localSetting.surahDetailsPageThemeIndex,
                  onChangedColor: context.read<QuranProvider>().changeSurahDetailsPageTheme,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
