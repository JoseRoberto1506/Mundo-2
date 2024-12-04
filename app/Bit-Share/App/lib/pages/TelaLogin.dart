import 'package:cfp_app/pages/onboardingCarregamento.dart';
import 'package:flutter/material.dart';
import './TelaCadastro.dart';
import 'componentes/botao.dart';
import './onboardingCarregamento.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              backgroundColor: const Color(0xffFAFAFA),
              elevation: 0, 
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.blue),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            // Sombra com gradiente
            Container(
              height: 4, // Altura da sombra
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
            // Campo de email
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
            // Campo de senha
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
            const SizedBox(height: 10),
            // Esqueci minha senha
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Esqueci minha senha',
                  style: TextStyle(color: Color(0xff5271FF)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Botão de login
            Botao(texto: 'Log in', onPressed: () { 
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const OnboardingScreenInitial(),
              ),
              );
             },
             ),
            const SizedBox(height: 20),
            // Opções adicionais
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Não tem uma conta?',
                  style: TextStyle(color: Color(0xFF5271FF)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Cadastre-se',
                    style: TextStyle(
                      color: Color(0xFF5271FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Entrar sem Log in',
                style: TextStyle(
                  color: Color(0xFF5271FF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
