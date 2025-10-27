import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Stat_manageMent/Provider/passwordvisibilityprovider.dart';


class TextFromFilt extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Icon? icon;

  const TextFromFilt({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
    this.isPassword = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: isPassword
            ? Consumer<PasswordVisibilityProvider>(
          builder: (context, provider, child) => TextFormField(
            controller: controller,
            obscureText: provider.isObscure,
            validator: validator,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labelText,
              filled: true,
              fillColor: Colors.white,
              suffixIcon: IconButton(
                icon: Icon(
                  provider.isObscure
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () => provider.toggleVisibility(),
              ),
            ),
          ),
        )
            : TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
            filled: true,
            fillColor: Colors.white,
            suffixIcon: icon,
          ),
        ),
      ),
    );
  }
}
