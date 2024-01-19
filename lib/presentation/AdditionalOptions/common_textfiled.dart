import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedInputField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final Function()? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool isAutoCompleteEnabled;
  final double? width;
  final String? errorText;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final int? minLines;
  final Color? backgroundColor;
  final TextInputType keyboardType;
  final TextEditingController? textEditingController;
  final Color? textColor;
  final bool isTextObscured;
  final bool isSuffixIcon;
  final Widget? suffixIcon;
  final Function()? onSuffixClick;
  final bool isAutoFocus;
  final String? validator;
  final String? intialvalue;
  final bool isFinalKeyboard;
  final FocusNode? focus;
  final FocusNode? nextFocus;
  final Widget? prefix;
  final bool? readOnly;
  final bool? enable;
  final Widget? suffix;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validators;
  final Iterable<String>? autoFillHints;
  final int? maxLength;

  const RoundedInputField(
      {Key? key,
      this.hintText,
      this.onTap,
      this.errorText,
      this.onChanged,
      this.onSubmitted,
      this.width,
      this.suffix,
        this.minLines,
      this.backgroundColor,
      this.keyboardType = TextInputType.text,
      this.textCapitalization = TextCapitalization.none,
      this.textEditingController,
      this.isAutoCompleteEnabled = true,
      this.textColor,
      this.isTextObscured = false,
      this.isSuffixIcon = false,
      this.suffixIcon,
      this.onSuffixClick,
      this.isAutoFocus = false,
      this.validator,
      this.isFinalKeyboard = false,
      this.focus,
      this.nextFocus,
      this.prefix,
      this.maxLines = null,
      this.readOnly = false,
      this.enable = true,
      this.inputFormatters,
      this.labelText = '',
      this.validators,
      this.maxLength,
      this.autoFillHints,
      this.intialvalue})
      : super(key: key);

  @override
  _RoundedInputFieldState createState() =>
      _RoundedInputFieldState(isTextObscured);
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  bool _isTextObscured = false;
  bool isValidValue = true;

  _RoundedInputFieldState(bool isTextObscured) {
    _isTextObscured = isTextObscured;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.intialvalue,
      cursorColor: Colors.grey,
      maxLength: widget.maxLength,
      minLines: widget.minLines ?? 1,
      readOnly: widget.readOnly!,
      obscuringCharacter: '*',
      keyboardType: widget.keyboardType,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      textInputAction:
          widget.isFinalKeyboard ? TextInputAction.done : TextInputAction.next,
      textCapitalization: widget.textCapitalization,
      obscureText: _isTextObscured,
      validator: widget.validators ??
          (value) => value!.isEmpty ? widget.validator : null,
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      onChanged: (text) {
        if (widget.onChanged != null) {
          widget.onChanged!(text);
        }
      },
      inputFormatters: widget.inputFormatters,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        counterText: '',
        prefix: widget.prefix,
        isDense: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide:BorderSide.none
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
        hintText: widget.hintText ?? '',
        suffixIcon: widget.suffixIcon == null
            ? widget.isSuffixIcon
                ? IconButton(
                    color: Colors.grey,
                    icon: _isTextObscured
                        ? const Icon(Icons.visibility_off_outlined)
                        : const Icon(Icons.visibility_outlined),
                    onPressed: () {
                      setState(() {
                        _isTextObscured = !_isTextObscured;
                      });
                    },
                  )
                : null
            : GestureDetector(
                onTap: () {
                  if (widget.onSuffixClick != null) {
                    widget.onSuffixClick!();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: widget.suffixIcon,
                ),
              ),
        filled: true,
        fillColor: Colors.white,
        suffix: widget.suffix,
        errorText: widget.errorText,
        errorMaxLines: 2,
      ),
      controller: widget.textEditingController,
      maxLines: widget.maxLines ?? 4,
    );
  }
}
