import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.buttonTColor,
    this.buttonBColor,
    this.textColor,
    this.width,
    this.height,
    this.iconButton,
    this.icon,
    this.iconColor,
    this.iconRightSide = true,
  });

  final String title;
  final Function onPressed;
  final Color? buttonTColor;
  final Color? buttonBColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final bool? iconButton;
  final IconData? icon;
  final Color? iconColor;
  final bool iconRightSide;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width ?? w * 0.9,
      height: height ?? h * 0.06,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(0),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                buttonTColor ?? Theme.of(context).primaryColorLight,
                buttonBColor ?? Theme.of(context).primaryColorLight
              ],
            ),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null && iconRightSide == false)
                  Icon(
                    icon!,
                    color: iconColor ?? Colors.white,
                  ),
                Padding(
                  padding: EdgeInsets.only(
                      left: iconRightSide == false ? w * 0.02 : 0,
                      right: iconRightSide == true ? w * 0.02 : 0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                if (icon != null && iconRightSide == true)
                  Icon(
                    icon!,
                    color: iconColor ?? Colors.white,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
