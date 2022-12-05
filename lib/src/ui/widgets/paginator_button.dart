import 'package:flutter/material.dart';
import 'package:number_paginator/src/ui/widgets/inherited_number_paginator.dart';

class PaginatorButton extends StatelessWidget {
  /// Callback for button press.
  final VoidCallback? onPressed;

  /// The child of the button.
  final Widget child;

  /// Whether the button is currently selected.
  final bool selected;

  final bool isArrow;

  /// Creates an instance of [PaginatorButton].
  const PaginatorButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.selected = false,
    this.isArrow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 10.0,
        ),
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                )
            ),
            backgroundColor: MaterialStateProperty.all<Color>(_backgroundColor(context, selected)?? Colors.white),
            foregroundColor: MaterialStateProperty.all<Color>(_foregroundColor(context, selected)?? Colors.white),
          ),
          child: child,
        ),
      ),
    );
  }

  Color? _backgroundColor(BuildContext context, bool selected) => selected
      ? (InheritedNumberPaginator.of(context)
              .config
              .buttonSelectedBackgroundColor ??
          Theme.of(context).colorScheme.secondary)
      : InheritedNumberPaginator.of(context)
          .config
          .buttonUnselectedBackgroundColor;

  Color? _foregroundColor(BuildContext context, bool selected) => selected
      ? (InheritedNumberPaginator.of(context)
              .config
              .buttonSelectedForegroundColor ??
          Colors.white)
      : InheritedNumberPaginator.of(context)
          .config
          .buttonUnselectedForegroundColor;
}
