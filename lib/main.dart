import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";

main() {
  runApp(const App(
    key: Key("key_do_app"),
    titulo: "Primeiro App",
  ));
}

class App extends StatelessWidget {
  // Named Parameters
  final String titulo;
  const App({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 84, 92, 236),
        title: const Text("Login",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/imagens/login.png"),
              width: 150,
              height: 150,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 50,
              ),
            ),
            const Text("Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 100,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Usuário",
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 50,
              ),
            ),
            const Text(
              "Senha",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 100,
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Crie sua conta.");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text("Crie sua conta.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 23, 231),
                    fontSize: 15,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Logado com sucesso!");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 84, 92, 236)),
              ),
              child: const Text("Acessar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
