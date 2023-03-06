import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  MyTextInput({super.key, required this.inputController, required this.label});

  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70),
        child: TextFormField(
          controller: inputController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              prefixIcon: const Icon(Icons.person),
              labelText: label,
              labelStyle: TextStyle(color: Colors.black38)),
        ),
      ),
    );
  }
}

class MyPassInput extends StatelessWidget {
  MyPassInput({super.key, required this.inputController, required this.label});

  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70),
        child: TextFormField(
          controller: inputController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              prefixIcon: const Icon(Icons.password),
              labelText: label,
              labelStyle: TextStyle(color: Colors.black38)),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  MyText({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black87, fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.lblText, required this.press});

  final Text lblText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500)),
        child: lblText);
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: child,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(31, 228, 226, 226).withOpacity(0.5),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), bottomLeft: Radius.circular(40)),
      ),
    );
  }
}

class MyAppContainer extends StatelessWidget {
  MyAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 29, 206, 250).withOpacity(0.5),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
      ),
    );
  }
}
