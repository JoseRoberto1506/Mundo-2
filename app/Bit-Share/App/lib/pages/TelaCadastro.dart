import 'package:cfp_app/pages/TelaLogin.dart';
import 'package:cfp_app/pages/componentes/botao.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              backgroundColor: const Color(0xFFFAFAFA),
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xff5271FF)),
                onPressed: () {
                  // Ação para voltar à tela anterior
                  Navigator.pop(context);
                },
              ),
            ),
            // Sombra abaixo do AppBar
            Container(
              height: 4, // Altura da "linha de sombra"
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.1),
                    Color.fromRGBO(0, 0, 0, 0.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Logo
              Center(
                child: Image.asset(
                  'assets/images/Logo.png',
                  height: 80,
                ),
              ),
              const SizedBox(height: 40),
              // Campo Nome
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nome',
                  labelStyle: const TextStyle(color: Color(0xff5271FF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xff5271FF)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Campo Email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Color(0xff5271FF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xff5271FF)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Campo Senha
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: const TextStyle(color: Color(0xff5271FF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xff5271FF)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Confirmar Senha
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirmar Senha',
                  labelStyle: const TextStyle(color: Color(0xff5271FF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xff5271FF)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Botão de Cadastrar
              Botao(texto: 'Cadastrar', onPressed: () {  
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const LoginPage(),
                )
                );
              },
              ),
              const SizedBox(height: 20),
              // Opções adicionais
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Já possui uma conta?',
                    style: TextStyle(color: Color(0xff5271FF)),
                  ),
                  TextButton(
                    onPressed: () {
                      // Ação para navegar para a tela de Login
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Color(0xff5271FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
