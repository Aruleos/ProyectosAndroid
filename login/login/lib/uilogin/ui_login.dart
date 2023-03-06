import 'package:flutter/material.dart';
import 'package:login/uilogin/widgets/login_widget.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  TextEditingController _numero1Controller = TextEditingController();
  TextEditingController _numero2Controller = TextEditingController();
  String respuesta = "Respuesta";
  double res = 0.0;

  void _calcular() {
    setState(() {
      double num1 = double.parse(_numero1Controller.text);
      double num2 = double.parse(_numero2Controller.text);

      res = num1 + num2;

      respuesta = res.toStringAsFixed(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: MyContainer(
        child: Column(children: [
          Stack(
            children: [MyAppContainer()],
          ),
          MyTextInput(inputController: _numero1Controller, label: "Usuario:"),
          MyPassInput(
              inputController: _numero2Controller, label: "Contraseña:"),
          //MyText(text: respuesta.toString()),
          MyButton(lblText: Text("Login"), press: (() => _calcular()))
        ]),
      )),
    );
  }
}
