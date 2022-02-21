import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contador de pessoas',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de pessoas',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(100, 154, 210, 1),
      ),
      body: Column(
        children: [
          Container(
            child: const Text(
              'Qtd pessoas',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(115, 115, 115, 1),
                  fontSize: 20),
            ),
            alignment: Alignment.center,
          ),
          Container(
            child: Text(_contador.toString(),
                style: const TextStyle(
                    fontSize: 50, color: Color.fromRGBO(115, 115, 115, 1))),
            margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          ),
          Row(
            children: [
              GestureDetector(
                child: Container(
                  child:
                      const Icon(Icons.remove, size: 48.0, color: Colors.white),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(100, 154, 210, 1),
                  ),
                  margin: const EdgeInsets.all(25.0),
                  padding: const EdgeInsets.all(20.0),
                ),
                onTap: () => {
                  if (_contador > 0)
                    {
                      setState(() {
                        _contador--;
                      })
                    }
                },
              ),
              GestureDetector(
                child: Container(
                  child: const Icon(Icons.add, size: 48.0, color: Colors.white),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(100, 154, 210, 1),
                  ),
                  margin: const EdgeInsets.all(25.0),
                  padding: const EdgeInsets.all(20.0),
                ),
                onTap: () => {
                  setState(() {
                    _contador++;
                  })
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
