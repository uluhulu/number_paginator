import 'package:flutter/cupertino.dart';
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
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: CupertinoButton(
            onPressed: onPressed,
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
            // style: TextButton.styleFrom(
            //   // shape: InheritedNumberPaginator.of(context).config.buttonShape ??
            //   //     const CircleBorder(),
            //   backgroundColor: _backgroundColor(context, selected),
            //   foregroundColor: _foregroundColor(context, selected),
            // ),
            child: child,
          ),
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
