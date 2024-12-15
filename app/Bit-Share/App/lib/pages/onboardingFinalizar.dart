import 'package:cfp_app/pages/onboardingFinalizado.dart';
import 'package:flutter/material.dart';


class OnboardingFinalizar extends StatefulWidget {
  const OnboardingFinalizar({Key? key}) : super(key: key);

  @override
  State<OnboardingFinalizar> createState() => _OnboardingFinalizarState();
}

class _OnboardingFinalizarState extends State<OnboardingFinalizar> {
  int _currentStep = 6; // Etapa atual
  final int _totalSteps = 6; // Total de etapas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xffFAFAFA),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Indicadores de progresso
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _totalSteps,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: index + 1 < _currentStep
                        ? const Color(0xFF5271FF)
                        : index + 1 == _currentStep
                            ? Colors.blue.withOpacity(0.5)
                            : Colors.grey.shade300,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Imagem
            Image.asset(
              '../assets/images/OnboardingFinalizar.png',
              height: 180,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image_not_supported, size: 100);
              },
            ),
            const SizedBox(height: 24),

            // Texto principal
            const Text(
              'Quase lá!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            // Subtexto
            const Text(
              'Finalize a personalização e obtenha a melhor experiência no app.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            // Botões no rodapé
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Pular',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF5271FF),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navegação ou ação ao finalizar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Finalizado com sucesso!'),
                          
                        ),
                      );
                      Navigator.push(
              context,
                MaterialPageRoute(
                builder: (context) => const OnboardingFinalizado(),
                ),
                  );                      
              },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5271FF),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    icon: const Icon(Icons.check, color: Colors.white),
                    label: const Text(
                      'Finalizar',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
