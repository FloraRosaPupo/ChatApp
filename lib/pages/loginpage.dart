import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minHeight: sizeOf.height),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fundo.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6),
                  BlendMode.darken), // Adicionando uma opacidade de 0.6
            ),
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              constraints: BoxConstraints(maxWidth: sizeOf.width * 0.8),
              child: Form(
                child: Column(
                  children: [
                    Text('Login'),
                    SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      decoration: InputDecoration(label: Text('Email')),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(label: Text('Senha')),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: sizeOf.width * 0.8,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('ENTRAR'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
