import 'package:flutter/material.dart';

class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);
  Widget nama() {
    return Text(
      textAlign: TextAlign.center,
      "© Annisaa' Dhia Salsabila",
      style: TextStyle(
        fontSize: 15,
        fontStyle: FontStyle.italic,
        color: Color.fromARGB(255, 255, 252, 214),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 161, 50, 59),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: NWidth,
                height: NHeight,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[
                        Color.fromARGB(255, 213, 99, 109),
                        Color.fromARGB(255, 87, 2, 2),
                      ]),
                ),
                child: ListView(
                  children: [
                    Container(
                      width: 400,
                      height: 400,
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      " Menyediakan Kue Lezat dan Berkualitas\ndengan harga Terjangkau ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 252, 214),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      " Ayo Daftar dan Pesan Sekarang! ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 252, 214),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    button_next(),
                    SizedBox(
                      height: 50,
                    ),
                    nama(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class button_next extends StatelessWidget {
  const button_next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 252, 214),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        textAlign: TextAlign.center,
        " LANJUTKAN ",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 113, 10, 10),
        ),
      ),
    );
  }
}
