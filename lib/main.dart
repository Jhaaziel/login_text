import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Inicio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.settings, color: Colors.white), onPressed: () {})
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            buildContainer(
              estado: "Brasíli",
              idade: 89,
              nome: " Francisco",
            ),
            buildContainer(
              estado: "Minas Gerais",
              nome: " Calos",
              idade: 65,
            ),
            buildContainer(
              estado: "Minas Gerais",
              nome: " Calos",
              idade: 65,
            ),
            buildContainer(
              estado: "Minas Gerais",
              nome: " Calos",
              idade: 65,
            ),
            buildContainer(
              estado: "Minas Gerais",
              nome: " Calos",
              idade: 65,
            ),
            buildContainer(
              estado: "Minas Gerais",
              nome: " Calos",
              idade: 65,
            ),
            buildContainer(
              estado: "Minas Gerais",
              nome: " Calos",
              idade: 65,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildContainer({String nome, int idade, String estado}) {
    return Column(
      children: [
        Card(
          elevation: 10,
          child: Container(
              height: 120,
              width: 390,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Nome $nome"),
                      Text("Idade $idade"),
                      Text("Estado $estado"),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://3.bp.blogspot.com/-tf5Kv_Q7OGg/VpVkvyGm_QI/AAAAAAABogM/9qZU36t9d_k/s1600/12274629_590660537739551_3512313744954850920_n.jpg"),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                ],
              )),
        ),
        Divider(
          height: 2,
        ),
      ],
    );
  }
}
