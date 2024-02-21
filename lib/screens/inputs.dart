import 'package:flutter/material.dart';
import 'package:praactica3/theme/app_theme.dart';


class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Ventana de entradas',
        
        ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: null,child: Text('Regresar')),
              ElevatedButton(onPressed: null, child: Text('DataScreen')),
          ],
        )
      ],
    );
  }
}