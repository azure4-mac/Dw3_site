import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TelaInicial()));
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: Icon(
          Icons.account_balance_sharp,
          color: Colors.black,
          size: 50.1,
        ),
        title: Center(
          child: Text("Amnipora", style: TextStyle(color: Colors.black)),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaCadastro()),
              );
            },
            child: Text('Cadastra-se', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              /* ação 2 */
            },
            child: Text('Produtos', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              /* ação 3 */
            },
            child: Text('SObre Nós', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              /* ação 4 */
            },
            child: Text(
              'Download do nosso App',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Center(
        child: Title(color: Colors.black, child: Text("Somos Amnipora")),
      ),
    );
  }
}

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: Icon(
          Icons.account_balance_sharp,
          color: Colors.black,
          size: 50.1,
        ),
        title: Center(
          child: Text("Amnipora", style: TextStyle(color: Colors.black)),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaCadastro()),
              );
            },
            child: Text('Cadastra-se', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              /* ação 2 */
            },
            child: Text('Produtos', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              /* ação 3 */
            },
            child: Text('SObre Nós', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              /* ação 4 */
            },
            child: Text(
              'Download do nosso App',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      ),
    );
  }
}
