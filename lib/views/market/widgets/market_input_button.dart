import 'package:flutter/material.dart';

class MarketInputButton extends StatefulWidget {

  const MarketInputButton({ Key? key }) : super(key: key);

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
                            color: Color.fromARGB(255, 65, 139, 139),
                            width: 2,
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 65, 139, 139),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {
                     
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 65, 139, 139),
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