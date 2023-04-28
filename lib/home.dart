import 'package:flutter/material.dart';
import 'package:flutter_airlines/map_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Airlines',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/map': (context) => MapPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Airlines'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 200.0, right: 200.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/avion.jpg',
                  fit: BoxFit.fill,
                  width: 1280,
                  height: 280,
                ),
                SizedBox(height: 20),
                Text(
                  'Bem-vindo à Flutter Airlines',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Container(
                  width: 700,
                  child: Text(
                    'A Flutter Airlines é uma companhia aérea que oferece voos para diversas cidades do mundo. Com um atendimento de qualidade e aeronaves modernas, estamos prontos para levar você para onde quiser.',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Divider(),
                SizedBox(height: 20),
                Text(
                  'Por que escolher a Flutter Airlines?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 700,
                  child: Text(
                      'A Flutter Airlines é uma companhia aérea comprometida com a segurança, o conforto e a satisfação dos seus passageiros. Temos uma equipe de profissionais altamente qualificados e uma infraestrutura completa para garantir a melhor experiência de viagem.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(height: 20),
                Container(width: 200, child: Divider()),
                SizedBox(height: 20),
                Text(
                  'OFERTA PARA CURTIR O INÍCIO DO INVERNO 2023',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Neste mês separamos ofertas incríveis para você curtir o ínicio do inverno em algumas das principais capitais do Brasil.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/map');
                  },
                  child: Text('Confira as ofertas'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.all(20.0),
                  )),
                ),
              ],
            ),
          ),
        ));
  }
}
