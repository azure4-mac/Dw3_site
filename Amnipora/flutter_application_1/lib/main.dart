import 'package:flutter/material.dart';

void main() {
  runApp(const AmniporaApp());
}

class AmniporaApp extends StatelessWidget {
  const AmniporaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amnipora',
      theme: ThemeData(
        fontFamily: 'Arial',
        primaryColor: Color.fromRGBO(0, 74, 173, 1),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildHeroSection(),
            _buildWave(),
            _buildPartnersSection(),
            _buildObjectivesSection(),
            _buildRegisterLoginSection(),
            _buildReviewsSection(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform.rotate(
                angle: 3.14,
                child: Image.asset(
                  'assets/img/logo.png',
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Cadastre-se',
                  style: TextStyle(color: Color.fromRGBO(0, 74, 173, 1)),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Produtos',
                  style: TextStyle(color: Color.fromRGBO(0, 74, 173, 1)),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sobre Nós',
                  style: TextStyle(color: Color.fromRGBO(0, 74, 173, 1)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildHeroSection() {
  return Padding(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Somos a Amnipora',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'A Amnipora é uma empresa especializada na gestão de negócios de delivery. Oferecemos soluções que otimizam processos, melhoram a operação e aumentam os lucros. Nosso objetivo é simplificar a gestão, trazer mais eficiência e ajudar seu delivery a crescer de forma organizada e sustentável. Somos seu parceiro para transformar desafios em resultados.',
                style: TextStyle(color: Colors.black87, height: 1.5),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: const Text('Saiba Mais'),
              ),
            ],
          ),
        ),
        const SizedBox(width: 32),
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'assets/img/somos.png',
              fit: BoxFit.contain,
              width: 400,
              height: 400,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildWave() {
  return ClipPath(
    clipper: WaveClipper(),
    child: Container(height: 100, color: Color.fromRGBO(0, 74, 173, 1)),
  );
}

Widget _buildPartnersSection() {
  return Container(
    color: Color.fromRGBO(0, 74, 173, 1),
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Parcerias fechadas com:',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            6,
            (index) => Card(
              color: Colors.white,
              child: Center(child: Text('Parceiro ${index + 1}')),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildObjectivesSection() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Qual o nosso objetivo?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          '1 - Otimizar a gestão de negócios de delivery',
          style: TextStyle(color: Colors.black87),
        ),
        const Text(
          '2 - Aumentar a eficiência e os lucros dos clientes',
          style: TextStyle(color: Colors.black87),
        ),
        const Text(
          '3 - Oferecer soluções práticas para crescimento sustentável',
          style: TextStyle(color: Colors.black87),
        ),
      ],
    ),
  );
}

Widget _buildRegisterLoginSection() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [_buildFormBox('Cadastrar-se'), _buildFormBox('Fazer Login')],
    ),
  );
}

Widget _buildFormBox(String title) {
  return Container(
    width: 300,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(0, 74, 173, 1),
          ),
        ),
        const SizedBox(height: 8),
        const TextField(decoration: InputDecoration(labelText: 'Email')),
        const TextField(decoration: InputDecoration(labelText: 'Senha')),
        const SizedBox(height: 8),
        ElevatedButton(onPressed: () {}, child: Text(title)),
      ],
    ),
  );
}

Widget _buildReviewsSection() {
  return Container(
    color: Color.fromRGBO(0, 74, 173, 1),
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nossas Avaliações',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            3,
            (index) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Review ${index + 1}'),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildFooter() {
  return Container(
    color: Colors.blue.shade900,
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Amnipora', style: TextStyle(color: Colors.white)),
        const Text('Produtos', style: TextStyle(color: Colors.white)),
        const Text('Cadastre-se', style: TextStyle(color: Colors.white)),
        const Text('Sobre Nós', style: TextStyle(color: Colors.white)),
      ],
    ),
  );
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 40);

    var firstControlPoint = Offset(size.width / 4, 0);
    var firstEndPoint = Offset(size.width / 2, 40);
    var secondControlPoint = Offset(3 * size.width / 4, 80);
    var secondEndPoint = Offset(size.width, 40);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
