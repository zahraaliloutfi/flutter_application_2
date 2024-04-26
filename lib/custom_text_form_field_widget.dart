import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String? hintText;
  Widget? suffix;

  Function(String)? onChanged;
  CustomTextFormField(
      {super.key,
      this.onChanged,
      this.hintText,
      this.suffix,
    });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
       
        // keyboardType: TextInputType.emailAddress,
        validator: (data) {
          if (data!.isEmpty) {
            return 'field if empty ';
          }
          return null;
          // else if (!EmailValidator.validate(data)) {
          //   return 'invalid';
          // }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
