import 'package:bmi_app/components/components.dart';
import 'package:bmi_app/components/constants.dart';
import 'package:flutter/material.dart';

class GenderRow extends StatelessWidget {
  const GenderRow({
    super.key,
    required this.onTapMale,
    required this.onTapFemale,
    required this.isMale,
  });
  final void Function() onTapMale;
  final void Function() onTapFemale;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: genderItem(
            color: isMale ? Colors.blue : kColorItem,
            onTap: onTapMale,
            icon: Icons.male_rounded,
            gender: 'MALE',
            context: context,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: genderItem(
            onTap: onTapFemale,
            color: !isMale ? Colors.blue : kColorItem,
            icon: Icons.female_rounded,
            gender: 'FEMALE',
            context: context,
          ),
        ),
      ],
    );
  }
}
