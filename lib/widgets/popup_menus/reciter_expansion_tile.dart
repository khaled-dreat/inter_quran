import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:international_Quran/constants/constants.dart';

import '../../providers/player_provider.dart';

class ReciterExpansionTile extends StatefulWidget {
  const ReciterExpansionTile({super.key});

  @override
  State<ReciterExpansionTile> createState() => _ReciterExpansionTileState();
}

class _ReciterExpansionTileState extends State<ReciterExpansionTile> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ListTileTheme(
        contentPadding: EdgeInsets.all(0),
        dense: true,
        horizontalTitleGap: 10.0,
        minLeadingWidth: 0,
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          trailing: _customTileExpanded
              ? const Icon(Icons.arrow_drop_down_rounded,
                  color: Color(0xFFB9B9B9), size: 35)
              : const Icon(Icons.arrow_right_rounded,
                  color: Color(0xFFB9B9B9), size: 35),
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
          leading: SvgPicture.asset(
            ImageConstants.favoriteInactiveIcon,
            width: 20,
            color: const Color(0xFFB9B9B9),
          ),
          title: Text(
            context.translate.reciter,
            style: context.theme.textTheme.titleLarge
                ?.copyWith(color: const Color(0xFFB9B9B9)),
          ),
          maintainState: true,
          children: <Widget>[
            _popupMenuItem(
              context: context,
              itemTitle: "Mohmoud Al Husary",
            ),
            _popupMenuItem(
              context: context,
              itemTitle: "Mahir Al-Muaiqly",
            ),
            _popupMenuItem(
              context: context,
              itemTitle: "Suud eş-Şureym",
            ),
            _popupMenuItem(
              context: context,
              itemTitle: "Abdurrahman es-Sudais",
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem _popupMenuItem({
    required BuildContext context,
    required String itemTitle,
  }) {
    return PopupMenuItem(
      height: 45,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        var isActive =
            context.watch<PlayerProvider>().reciterTitle == itemTitle;
        return InkWell(
          onTap: () =>
              context.read<PlayerProvider>().setReciter(itemTitle),
          child: Container(
            decoration: isActive
                ? BoxDecoration(
                    color: const Color(0xFF333333),
                    borderRadius: BorderRadius.circular(10),
                  )
                : null,
            padding: const EdgeInsets.all(9),
            child: Row(
              children: [
                isActive
                    ? SvgPicture.asset(
                        ImageConstants.okayBorderIcon,
                        width: 20,
                      )
                    : const SizedBox(width: 20),
                const SizedBox(width: 10),
                Text(
                  itemTitle,
                  style: context.theme.textTheme.titleLarge?.copyWith(
                    color: isActive ? null : const Color(0xFFB9B9B9),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
