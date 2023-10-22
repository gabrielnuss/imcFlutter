import 'package:flutter/material.dart';
import 'package:my_app_imc/classes/imc.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  TextEditingController alturaController = TextEditingController(text: "");
  TextEditingController pesoController = TextEditingController(text: "");
  int imcCalculado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: Column(
        children: [
          Text("Altura"),
          TextField(controller: alturaController),
          SizedBox(
            height: 10,
          ),
          Text("Peso"),
          TextField(
            controller: pesoController,
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                imc imcCalculadoClass = imc(double.parse(alturaController.text),
                    int.parse(pesoController.text));
                imcCalculado = imcCalculadoClass.calcularImc();
                setState(() {});
              },
              child: Text("Calcular")),
          Text("imc calculado: $imcCalculado")
        ],
      ),
    );
  }
}
