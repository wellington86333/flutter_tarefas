import 'package:flutter/material.dart';
import 'package:flutter_tarefas/components/task.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitialScreem(),
    );
  }
}

class InitialScreem extends StatefulWidget {
  const InitialScreem({super.key});

  @override
  State<InitialScreem> createState() => _InitialScreemState();
}

class _InitialScreemState extends State<InitialScreem> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task("Aprender Flutter ", "assets/images/dash.png", 3),
            Task("Andar de Bike", "assets/images/bike.webp", 2),
            Task("Meditar", "assets/images/meditar.jpeg", 5),
            Task("Ler", "assets/images/livro.jpg", 4),
            Task("Jogar", "assets/images/jogo.jpg", 1),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
