import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String> validator;
  final bool obsecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final bool isPassword;
  final String? errorText;
  final String label;
  final String? hint;
  final Widget? suffix;
  final Widget? prefix;
  final bool? isDroped;
  final VoidCallback? onDrop;
  final bool isArabic;

  const CustomTextField({
    super.key,
    this.controller,
    required this.validator,
    this.onDrop,
    this.keyboardType = TextInputType.text,
    this.obsecure = false,
    this.isDroped = false,
    this.onTap,
    this.hint,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    required this.label,
    this.suffix,
    this.prefix,
    this.enabled = true,
    this.isPassword = false,
    this.onEditingCompleted,
    this.onChanged,
    this.isArabic = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(2, 2),
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(5, 0),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextFormField(
          obscureText: isPassword,
          onChanged: onChanged,
          keyboardType: keyboardType,
          controller: controller,
          enabled: enabled,
          readOnly: readOnly,
          textDirection: (isArabic) ? TextDirection.rtl : TextDirection.ltr,
          style: (enabled)
              ? null
              : const TextStyle(
                  color: Color.fromARGB(255, 213, 212, 212), fontSize: 14),
          decoration: InputDecoration(
            errorMaxLines: 7,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            border: InputBorder.none,
          ),
          validator: (value) {
            return validator(value);
          },
        ));
  }
}
