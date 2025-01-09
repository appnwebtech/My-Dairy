import 'package:flutter/material.dart';


class BtnStyle {
  // Singleton pattern
  static final BtnStyle _singleton = BtnStyle._internal();

  factory BtnStyle() {
    return _singleton;
  }

  BtnStyle._internal();

  /// Button Style One
  static Widget buttonStyleOne({
    Color? btnColor,
    FontWeight? weight,
    double? titleSize,
    Color? titleColor,
    double? width,
    double? height,
    double? borderRadius,
    Widget? prefixIcon,
    Widget? suffixIcon,
    String? title,
    TextStyle? fontfamily,
    bool? needborder,
    Color? shadowcolor,
    double? shadowspreadradius,
    Color? bordercolor,
    double? blurRadius,
    double? shadowoffsetdx,
    double? shadowoffsetdy,
    double? borderwidth,
    bool? needGradient,
    List<Color>? gradientColors,
    required VoidCallback onPress,
    Color? buttonColor,
  }) {
    return InkWell(
      onTap: onPress,
      child: Container(

        height: height ?? 40.0,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        constraints: BoxConstraints(
          minWidth: width ?? 20.0, // Minimum width
          maxWidth: width ?? double.infinity, // Dynamically constrain max width
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: shadowcolor == null? Colors.grey : shadowcolor,
              spreadRadius: shadowspreadradius==null ? 1 :shadowspreadradius,
              blurRadius: blurRadius==null ? 1 : blurRadius,
              offset: Offset(shadowoffsetdx==null ? 1 : shadowoffsetdx, shadowoffsetdy==null ? 1 : shadowoffsetdy), // changes position of shadow
            ),
          ],
          color: buttonColor ?? btnColor ?? Colors.white, // Fallback to white
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          border:  needborder==true ? Border.all(color: bordercolor==null? Colors.black : bordercolor, width: borderwidth==null? 1 : borderwidth,) : null,
          gradient: needGradient == true
              ? LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: gradientColors!, // Assumes this is defined
          )
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Dynamically sized to content
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon,
              const SizedBox(width: 10),
            ],
            title != null ?
            Text(
              title,
              style: fontfamily==null? TextStyle(
                fontSize: titleSize ?? 16,
                color: titleColor ?? Colors.white,
                fontWeight: weight ?? FontWeight.w500,
              ): fontfamily,
              textAlign: TextAlign.center,
            ):
            const SizedBox(),
            title == null || suffixIcon == null   ? const SizedBox.shrink() :  const SizedBox(width: 10),
            if (suffixIcon != null) ...[
              suffixIcon,
            ],
          ],
        ),
      ),
    );
  }
}
