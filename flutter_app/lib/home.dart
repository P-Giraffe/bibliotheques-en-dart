import 'package:flutter/material.dart';
import 'package:pgf_tools/pgf_tools.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = "";
  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: "Entrez une URL"),
              onChanged: (value) {
                url = value;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  if (url.isValidURL) {
                    setState(() {
                      message = "L'URL est valide";
                    });
                  } else {
                    setState(() {
                      message = "L'URL n'est pas valide";
                    });
                  }
                },
                child: const Text("Vérfier l'URL")),
            Text(message)
          ],
        ),
      ),
    ));
  }
}
