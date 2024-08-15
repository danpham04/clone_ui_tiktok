import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarApplication extends StatelessWidget implements PreferredSizeWidget {
  AppBarApplication(
      {super.key,
      this.centerTitle = true,
      this.showLeading = true,
      this.leading,
      this.flexibleSpace,
      this.titleName = '',
      this.actions,
      this.bottom,
      this.heightAppBar = kToolbarHeight,
      this.colors = Colors.white,
      this.fontSize,
      this.fontWeight,
      this.colorIcon,
      this.colorBack,
      this.padding = 0,
      this.showTitle = true,
      this.title});
  final bool centerTitle;
  final bool showLeading;
  final bool showTitle;
  final Widget? title;
  final Widget? leading;
  final Widget? flexibleSpace;
  final String titleName;
  final List<Widget>? actions;
  PreferredSizeWidget? bottom;
  final double heightAppBar;
  final Color? colors;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? colorIcon;
  final Color? colorBack;
  final double padding;

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorBack,
      centerTitle: centerTitle,
      automaticallyImplyLeading: showLeading,
      leading: showLeading
          ? leading ??
              IconButton(
                  onPressed: () {
                    // hàm nhảy về màn hình trước đó
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: colorIcon,
                    size: 24,
                  ))
          : null,
      title: Padding(
          padding: EdgeInsets.only(top: padding),
          child: showTitle
              ? title ??
                  Text(
                    titleName,
                    style: TextStyle(
                        color: colors,
                        fontSize: fontSize,
                        fontWeight: fontWeight),
                  )
              : null),
      actions: actions,
      bottom: bottom,
      flexibleSpace: flexibleSpace,
    );
  }
}
