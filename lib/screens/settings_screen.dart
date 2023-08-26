import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:international_Quran/constants/constants.dart';
import 'package:international_Quran/screens/references_screen.dart';

import '../providers/app_settings_provider.dart';
import '../providers/more_provider.dart';
import '../widgets/app_bars/primary_app_bar.dart';
import '../widgets/bottom_sheets/surah_detail_settings_bottom_sheet.dart';
import '../widgets/buttons/secondary_button.dart';
import '../widgets/buttons/secondary_button_rate.dart';
import '../widgets/cards/custom_expanding_theme_card.dart';
import 'help_guide_screen.dart';
import 'language_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Scaffold(
          appBar: PrimaryAppBar(
            title: context.translate.internationalQuranApp,
          ),
          body: buildBody,
        ),
        buildAppInfo,

      ],
    );
  }


  Widget get buildBody {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: kSizeL, horizontal: kSizeXL),
      child: SingleChildScrollView(
        child: Column(
          children: [

            // Align(
            //   alignment: Alignment.topLeft,
            //   child: Text(
            //     context.translate.settings,
            //     style: context.theme.textTheme.displayLarge,
            //   ),
            // ),

            /// ToDo: Uncomment for release
            CustomExpandingThemeCard(

              defaultThemeMode:
              context.watch<AppSettingsProvider>().appThemeMode,
              changedTheme: (newThemeMode) => context
                  .read<AppSettingsProvider>()
                  .changeAppTheme(newThemeMode),
            ),
            SecondaryButton(

              text: context.translate.settings_sura_theme,
              onPressed: () {
                SurahDetailSettingsBottomSheet.show(context);
              },
              icon:  SvgPicture.asset(
                ImageConstants.settingsIcon,
                height: 20,
              ), ),
            // CustomLanguageCard(
            //   defaultLocale: context.watch<AppSettingsProvider>().appLocale,
            //   changedLocale: context.read<MoreProvider>().changeAppLanguage,
            // ),
            SecondaryButton(
              text: context.translate.language,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LanguageScreen(),
                    ));
              },
              icon: SvgPicture.asset(
                ImageConstants.languageIcon,
                color: AppColors.white,
              ),
            ),


            SecondaryButton(
                text: context.translate.helpGuide,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HelpGuideScreen(),
                      ));
                },
                icon: SvgPicture.asset(
                  ImageConstants.helpGuideIcon,
                  color: AppColors.white,
                )),



            // /// ToDo: Uncomment for release
            // SecondaryButton(
            //   text: context.translate.introduction,
            //   onPressed: () {},
            //   icon: SvgPicture.asset(
            //     ImageConstants.introductionIcon,
            //     color: AppColors.white,
            //   ),
            // ),



            SecondaryButton(
              text: context.translate.shareApp,
              onPressed: () async {
                const appUrl = 'https://picalica.com/u/Ali_Sliman';
                await Share.share('Download International Quran App \n\n $appUrl');
              },
              icon: SvgPicture.asset(
                ImageConstants.shareAppIcon,
                color: AppColors.white,
              ),
            ),
            /// ToDo: Uncomment for release

            SecondaryButton(
              text: context.translate.writeAnAppStoreReview,
              onPressed: () {
                context.read<MoreProvider>().onPressRate();
              },
              icon: const Text(
                '❤',
                style: TextStyle(fontSize: 18),
              ),
              // endIcon: SvgPicture.asset(ImageConstants.arrowRight),
            ),

            SecondaryButton(
                text: context.translate.references,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReferencesScreen(),
                      ));
                },
                icon: SvgPicture.asset(
                  ImageConstants.referencesIcon,
                  color: AppColors.white,
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }

  Widget get buildAppInfo {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        return Opacity(
          opacity: 0.24,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              "${context.translate.madeByAliSliman} ${context.translate.version} ${snapshot.data?.version ?? ""}",
              style: context.theme.textTheme.headlineSmall,
            ),
          ),
        );
      },
    );
  }
}
