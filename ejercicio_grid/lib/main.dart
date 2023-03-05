import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello, World!',
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 20, 90, 35),
          appBar: AppBar(
            title: const Text('Grid'),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(2),
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Image.network(
                      'https://i.pinimg.com/736x/51/54/c6/5154c6943704a323e9e9e912a190e464--disney-films-cartoon-characters.jpg'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                ],
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  padding: const EdgeInsets.all(20),
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Row(
                        children: [
                          Column(children: [
                            SizedBox(
                                width: 150,
                                height: 70,
                                child: SingleChildScrollView(
                                  child: Text(
                                    "pellentesque pulvinar pellentesque habitant",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),

                            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                            SizedBox(
                              width: 150,
                              height: 70,
                              child: SingleChildScrollView(
                                child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim blandit volutpat maecenas volutpat.",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                     Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Row(
                        children: [
                          Column(children: [
                            SizedBox(
                                width: 150,
                                height: 70,
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Titulo Editable 2",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),

                            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                            SizedBox(
                              width: 150,
                              height: 70,
                              child: SingleChildScrollView(
                                child: Text(
                                "Desc Editable 2",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                     Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Row(
                        children: [
                          Column(children: [
                            SizedBox(
                                width: 150,
                                height: 70,
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Titulo editable 3",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),

                            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                            SizedBox(
                              width: 150,
                              height: 70,
                              child: SingleChildScrollView(
                                child: Text(
                                "Desc Editable 3",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                     Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Row(
                        children: [
                          Column(children: [
                            SizedBox(
                                width: 150,
                                height: 70,
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Titulo editable 4",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),

                            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                            SizedBox(
                              width: 150,
                              height: 70,
                              child: SingleChildScrollView(
                                child: Text(
                                "Desc Editable 4",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                     Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Row(
                        children: [
                          Column(children: [
                            SizedBox(
                                width: 150,
                                height: 70,
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Titulo editable 5",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),

                            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                            SizedBox(
                              width: 150,
                              height: 70,
                              child: SingleChildScrollView(
                                child: Text(
                                "Desc Editable 5",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                     Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Row(
                        children: [
                          Column(children: [
                            SizedBox(
                                width: 150,
                                height: 70,
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Titulo editable 6",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),

                            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                            SizedBox(
                              width: 150,
                              height: 70,
                              child: SingleChildScrollView(
                                child: Text(
                                "Desc Editable 6",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),

                    
                    
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
