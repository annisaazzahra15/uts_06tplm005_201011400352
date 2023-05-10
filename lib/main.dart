import 'package:flutter/material.dart';

void main() {
  runApp(const uts_06tplm005_201011400352());
}

class uts_06tplm005_201011400352 extends StatefulWidget {
  const uts_06tplm005_201011400352({Key? key}) : super(key: key);

  @override
  State<uts_06tplm005_201011400352> createState() => _MyAppState();
}

class _MyAppState extends State<uts_06tplm005_201011400352> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 25,
          title: Row(
            children: [
              Text(
                "Shoes",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 0, 255),
                  fontSize: 45,
                  fontFamily: 'Kanit',
                ),
              ),
              const SizedBox(width: 160),
              Image.asset(
                'assets/images/logoo.png',
                width: 70,
                height: 70,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          RoundedBox(
            color: Color.fromARGB(255, 124, 255, 244),
            text1: 'Nike SB Zoom Blazer',
            text2: 'Mild Premium',
            text3: '',
            text4: 'Rp 1,729,000',
            imageUrl:
                'https://i.postimg.cc/dQkH2P22/nike-sb-zoom-blazer-mid-premium-skate-shoe-green-green-1b88-main.webp',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 255, 180, 245),
            text1: 'Nike Air Zoom Pegasus',
            text2: "Men's Rood Running Shoes",
            text3: '',
            text4: 'Rp 1,399,000',
            imageUrl:
                'https://i.postimg.cc/qvCvrY0p/d45a737b54ae01209bb195b8aa9bf8130c72c6b7-CK8474-100.jpg',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 255, 254, 169),
            text1: 'Nike ZoomX Pavorly',
            text2: "Men's Rood Racing Shoes",
            text3: '',
            text4: 'Rp 3,399,000',
            imageUrl:
                'https://i.postimg.cc/R0XQBNvr/download.jpg',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 202, 173, 255),
            text1: 'Nike Air Force 1 S50',
            text2: "Older Kid's Shoes",
            text3: 'Harga Normal',
            text4: 'Rp 1,219,000',
            imageUrl:
                'https://i.postimg.cc/KvKrBGxF/nike-air-force-1-s50-gs-white-university-blue-db1560-100-tsw.jpg',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 158, 255, 182),
            text1: 'Nike Waffle One',
            text2: "Men's Shoes",
            text3: '',
            text4: 'Rp 1,729,000',
            imageUrl:
                'https://i.postimg.cc/BQH6FkLt/DX9428-001-1.jpg',
          ),
        ],
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imageUrl;

  const RoundedBox({
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 125,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -17,
            right: -2,
            child: Image.network(
              imageUrl,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  text4,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}