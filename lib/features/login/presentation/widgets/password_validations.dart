import 'package:doc_advance/core/helpers/spacing.dart';
import 'package:doc_advance/core/theming/colors.dart';
import 'package:doc_advance/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinimumLength,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinimumLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
          'At least 1 special character letter',
          hasSpecialCharacter,
        ),
        verticalSpace(2),
        buildValidationRow('At least 1 number letter', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinimumLength),
        verticalSpace(2),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorManager.gray),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13darkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorManager.gray : ColorManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
