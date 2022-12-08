import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: MediaQuery.of(context).size.height * 0.2,
        title: Column(
          children: [
            Image.network(
                height: 40,
                "https://logos-download.com/wp-content/uploads/2016/02/Twitter_Logo_new.png"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2 * 0.2),
            const Text(
              "Twitter'a giriş yap",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          //width: MediaQuery.of(context).size.width * 0.8,
          //decoration: BoxDecoration(color: Colors.yellow),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GFButton(
                borderSide: BorderSide(color: Colors.grey),
                onPressed: () {},
                text: "Google ile oturum açın",
                textStyle: const TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 65, 62, 62)),
                shape: GFButtonShape.pills,
                blockButton: true,
                color: Colors.white,
                icon: Image.network(
                  "https://i.stack.imgur.com/aZqAl.png",
                ),
              ),
              GFButton(
                borderSide: BorderSide(color: Colors.grey),
                onPressed: () {},
                text: "Apple ile giriş yap",
                textStyle: const TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 65, 62, 62)),
                shape: GFButtonShape.pills,
                blockButton: true,
                color: Colors.white,
                icon: Image.network(
                    "https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-index-content-uploads-10.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 5,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      " veya ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 5,
                        endIndent: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 340,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    label: Center(
                      child: Text(
                        "e-posta veya kullanıcı adı",
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GFButton(
                  borderSide: BorderSide(color: Colors.grey),
                  onPressed: () {},
                  text: "İleri",
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                  shape: GFButtonShape.pills,
                  blockButton: true,
                  color: Colors.black,
                ),
              ),
              GFButton(
                borderSide: BorderSide(color: Colors.grey),
                onPressed: () {},
                text: "Şifreni mi unuttun?",
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 65, 62, 62)),
                shape: GFButtonShape.pills,
                blockButton: true,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Henüz bir hesabın yok mu?",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Kaydol",
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                          recognizer: TapGestureRecognizer()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
