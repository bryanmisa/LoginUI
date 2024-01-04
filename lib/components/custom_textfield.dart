import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final String labelText;
  final bool isPassword;

  const TextFieldWidget({
    super.key,
    required this.textEditingController,
    required this.labelText,
    required this.isPassword,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      obscureText: widget.isPassword && obscureText,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: widget.labelText,
          //labelText: widget.labelText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade500,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade500,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                )
              : null),
    );
  }
}
