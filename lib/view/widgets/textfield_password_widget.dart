import 'package:flutter/material.dart';
import 'package:news_app/constant/app_color.dart';

class TextFieldPasswordWidget extends StatefulWidget {
  final String title;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final IconData? suffixIcon2;
  final VoidCallback? onPressedCallback;

  const TextFieldPasswordWidget({
    required this.title,
    required this.prefixIcon,
    this.onPressedCallback,
    this.suffixIcon,
    this.suffixIcon2,
    Key? key,
  }) : super(key: key);

  @override
  _TextFieldPasswordWidgetState createState() =>
      _TextFieldPasswordWidgetState();
}

class _TextFieldPasswordWidgetState extends State<TextFieldPasswordWidget> {
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: _isFocused ? purplePrimary : Colors.transparent,
        ),
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          obscureText: _isObscure,
          focusNode: _focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 16.0),
            hintText: widget.title,
            hintStyle: TextStyle(color: Colors.grey),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              icon: _isObscure
                  ? Icon(Icons.visibility)
                  : Icon(Icons.visibility_off),
              color: _isFocused ? purplePrimary : Colors.grey,
            ),
            prefixIcon: Icon(
              widget.prefixIcon,
              color: _isFocused ? purplePrimary : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
