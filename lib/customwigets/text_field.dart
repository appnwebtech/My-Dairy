import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldStyleOne extends StatefulWidget {
  TextEditingController controller;
  int? maxLength;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  TextInputAction? textInputAction;
  bool? autofocus;
  InputDecoration? decoration;
  String? labelText;
  String? hintText;
  Color? fillColor;
  Color? outlineBorderColor;
  EdgeInsetsGeometry? contentPadding;
  double? borderRadius;
  bool? enabledBorder;
  TextStyle? style;
  bool? isFloating;
  Widget? suffixIcon;
  bool? readOnly;
  Widget? prefix;
  Function(String)? onChanged;
  Function()? ontap;
  String? errorText;
  FocusNode? focusNode;
  Color? titlecolor;
  bool? isPassword;
  bool? needtitle;
  String? prefixtitleicon;
  String? titletext;
  FontWeight? titlefontWeight;
  int? maxLines;
  int? minLines;
  String? titlefontfamily;
  TextCapitalization? textCapitalization;
  Color? focusedBorderColor;
  TextStyle? fontfamily;
  Color? suffixiconcolor;
  double? titlefontsize;
  double? titleheight;
  Color? titleiconcolor;
  double? titleiconsize;
  double? letterspacing;
  double? prefixheight = 24.0;
  double? prefixwidth = 24.0;
  double? cursorheight;
  FloatingLabelBehavior? floatinglabelbehavior;
  double? outsidepaddingright;
  double? outsidepaddingleft;
  double? outsidepaddingtop;
  double? outsidepaddingbottom;
  Color? hinttextcolor;
  Color? textcolor;
  double? contentpaddingleft;
  BorderRadius outlineborderradius = BorderRadius.circular(10);
  double? space;
  final String? Function(String?)? validator;

  TextFieldStyleOne(
      {Key? key,
      required this.controller,
      this.titletext,
        this.outsidepaddingleft,
        this.outsidepaddingright,
        this.outsidepaddingtop,
        this.outsidepaddingbottom,
        this.contentpaddingleft,
        this.floatinglabelbehavior,
        this.suffixiconcolor,
        this.hinttextcolor,
        this.fontfamily,
        this.textcolor,
        this.prefixheight,
        this.prefixwidth,
        this.cursorheight,
        this.letterspacing,
      this.titleiconsize,
      this.titleiconcolor,
      this.titleheight,
      this.titlecolor,
      this.titlefontWeight,
      this.titlefontfamily,
      this.maxLines,
      this.minLines,
      this.maxLength,
      this.keyboardType,
      this.inputFormatters,
      this.textInputAction,
      this.autofocus,
      this.decoration,
      this.labelText,
      this.hintText,
      this.fillColor,
      this.contentPadding,
      this.outlineBorderColor,
      this.borderRadius,
      this.enabledBorder,
      this.style,
      this.readOnly,
      this.suffixIcon,
        this.space,
      this.onChanged,
      this.prefix,
      this.ontap,
      this.errorText,
      this.focusNode,
      this.isPassword,
      this.textCapitalization,
      this.focusedBorderColor,
      this.validator,
      this.titlefontsize,
      this.isFloating,
      this.needtitle,
      this.prefixtitleicon})
      : super(key: key);

  @override
  State<TextFieldStyleOne> createState() => _TextFieldSimpleState();
}

class _TextFieldSimpleState extends State<TextFieldStyleOne> {
  bool? isFloating;
  bool eyeHide = false;

  @override
  void initState() {
    if (widget.isPassword == true) {
      eyeHide = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.outsidepaddingtop ?? 18.0, bottom: widget.outsidepaddingtop ?? 18.0, left: widget.outsidepaddingtop ?? 18.0, right: widget.outsidepaddingtop ?? 18.0) ,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.needtitle == true
              ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SvgPicture.asset(widget.prefixtitleicon!, height: 24, width: 24,),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.titletext.toString(),
                      style: TextStyle(
                          color: widget.titlecolor,
                          fontWeight: widget.titlefontWeight,
                          fontFamily: widget.titlefontfamily,
                          fontSize: widget.titlefontsize,
                          height: widget.titleheight),
                    )
                  ],
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                ),
          SizedBox(height: widget.space== null? null : widget.space),
          TextFormField(
            cursorHeight: widget.cursorheight,
            validator: widget.validator as String? Function(String?)?,
            cursorColor: Colors.black,
            cursorWidth: 1,
            controller: widget.controller,
            obscureText: widget.isPassword == true ? eyeHide : false,
            textInputAction: widget.textInputAction ?? TextInputAction.next,
            keyboardType: widget.keyboardType ?? TextInputType.emailAddress,
            maxLength: widget.maxLength,
            inputFormatters: widget.inputFormatters,
            autofocus: widget.autofocus ?? false,
            readOnly: widget.readOnly ?? false,
            onTap: widget.ontap as void Function()?,
            maxLines: widget.maxLines ?? 1,
            minLines: widget.minLines ?? 1,
            focusNode: widget.focusNode,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.words,
            onChanged: widget.onChanged as void Function(String)? ?? (value) {},
            style: widget.style ??
                GoogleFonts.poppins(
                  letterSpacing: widget.letterspacing,
                  color: widget.textcolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
            decoration: widget.decoration ??
                InputDecoration(
                  enabled: true,
                  hintStyle: TextStyle(
                    color: widget.hinttextcolor == null ? Colors.black : widget.hinttextcolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  prefixIconConstraints:
                      BoxConstraints(maxHeight: widget.prefixheight == null ? 24 : widget.prefixheight!, maxWidth:   widget.prefixwidth == null ? 24 : widget.prefixwidth!),
                  labelText: widget.labelText ?? "",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: null,
                    color: null,
                  ),
                  fillColor: widget.fillColor ?? Colors.transparent,
                  hintText: widget.hintText ?? "",
                  floatingLabelBehavior: widget.floatinglabelbehavior == null ? FloatingLabelBehavior.never : widget.floatinglabelbehavior,
                  filled: true,
                  counterText: "",
                  suffixIcon: widget.isPassword == true
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              eyeHide = !eyeHide;
                            });
                          },
                          child: Icon(
                            eyeHide == false
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off_outlined,
                            color: widget.suffixiconcolor == null ? Colors.black : widget.suffixiconcolor,
                            size: 28,
                          ),
                        )
                      : widget.suffixIcon != null && widget.isPassword != true
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: widget.suffixIcon,
                            )
                          : null,
                  prefixIcon: widget.prefix != null
                      ? Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: widget.prefix,
                        )
                      : const SizedBox(width: 15),
                  contentPadding: widget.contentPadding ??
                      const EdgeInsets.only(
                          top: 0, bottom: 1, left: 15  , right: 15),
                  border: widget.enabledBorder == true
                      ? UnderlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                          borderSide: BorderSide(
                              color: widget.outlineBorderColor ?? Colors.black,
                              width: 1),
                        )
                      : OutlineInputBorder(
                          borderRadius: widget.outlineborderradius == null ? BorderRadius.circular(10) : widget.outlineborderradius,
                          borderSide: BorderSide(
                              color: widget.outlineBorderColor ?? Colors.black,
                              width: 1)),
                  errorText: widget.errorText,
                  errorMaxLines: 4,
                  focusedBorder: widget.enabledBorder == true
                      ? UnderlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                          borderSide: BorderSide(
                              color: widget.focusedBorderColor ?? Colors.black,
                              width: 1),
                        )
                      : OutlineInputBorder(
                          borderRadius: widget.outlineborderradius!,
                          borderSide: BorderSide(
                              color: widget.focusedBorderColor ?? Colors.black,
                              width: 1)),
                  errorBorder: widget.enabledBorder == true
                      ? UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        )
                      : OutlineInputBorder(
                          borderRadius: widget.outlineborderradius!,
                          borderSide: BorderSide(
                              color: widget.outlineBorderColor ?? Colors.black,
                              width: 1)),
                  enabledBorder: widget.enabledBorder == true
                      ? UnderlineInputBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                          borderSide: BorderSide(
                            color: widget.errorText != null &&
                                    widget.errorText != ""
                                ? Colors.black
                                : widget.outlineBorderColor ?? Colors.black,
                            width: 1,
                          ),
                        )
                      : OutlineInputBorder(
                          borderRadius: widget.outlineborderradius!,
                          borderSide: BorderSide(
                              color: widget.outlineBorderColor ?? Colors.black,
                              width: 1)),
                ),
          ),
        ],
      ),
    );
  }
}
