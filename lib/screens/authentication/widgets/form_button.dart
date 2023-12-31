import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  final void Function() onTap;
  final String? text;

  const FormButton({
    super.key,
    required this.disabled,
    required this.onTap,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FractionallySizedBox(
        widthFactor: 1,
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 300,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Sizes.size5,
            ),
            color: disabled
                ? Colors.grey.shade300
                : Theme.of(context).primaryColor,
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(
              milliseconds: 300,
            ),
            style: TextStyle(
              color: disabled ? Colors.grey.shade400 : Colors.white,
              fontWeight: FontWeight.w600,
            ),
            child: Text(
              text ?? 'Next',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
