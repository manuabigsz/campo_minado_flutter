import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool venceu;
  final Function onReiniciar;

  const ResultadoWidget({
    super.key,
    required this.venceu,
    required this.onReiniciar,
  });

  Color _getCor() {
    if (venceu) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  IconData _getIcon() {
    if (venceu) {
      return Icons.sentiment_very_satisfied;
    } else {
      return Icons.sentiment_dissatisfied;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
          backgroundColor: _getCor(),
          child: IconButton(
            onPressed: () => onReiniciar(),
            padding: const EdgeInsets.all(0),
            icon: Icon(
              _getIcon(),
              color: Colors.black,
              size: 35,
            ),
          ),
        ),
      )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
