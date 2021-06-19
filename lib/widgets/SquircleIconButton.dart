import 'package:clubhouse/utils/DynamicColor.dart';
import 'package:flutter/material.dart';

class SquircleIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  const SquircleIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: DynamicColor.withBrightness(
          context: context,
          color: Color(0xFFebf0fd),
          darkColor: Color(0xFF2a2b29),
        ),
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        highlightColor: Colors.transparent,
        color: DynamicColor.withBrightness(
          context: context,
          color: Color(0xFF1e1132),
          darkColor: theme.primaryColor,
        ),
      ),
    );
  }
}
