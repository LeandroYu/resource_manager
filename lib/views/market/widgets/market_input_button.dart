import 'package:flutter/material.dart';
import '../../../core/theme/theme.dart' as theme;

class MarketInputButton extends StatefulWidget {
  const MarketInputButton({Key? key}) : super(key: key);

  @override
  _MarketInputButtonState createState() => _MarketInputButtonState();
}

class _MarketInputButtonState extends State<MarketInputButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Adicione um Item',
              hintText: 'Ex: Produto',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: theme.mainColor,
                  width: 2,
                ),
              ),
              labelStyle: TextStyle(
                color: theme.mainColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: theme.mainColor,
            padding: const EdgeInsets.all(14),
          ),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ],
    );
  }
}
