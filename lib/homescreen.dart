import 'package:flutter/material.dart';
import 'component/list_item.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  final List<Map<String, String>> makananTradisional = const [
    {
      "title": "Nasi Goreng",
      "description":
          "Nasi yang digoreng bersama bumbu khas Indonesia, disajikan dengan telur mata sapi, ayam suwir, dan kerupuk."
    },
    {
      "title": "Rendang",
      "description":
          "Daging sapi yang dimasak dengan bumbu rempah-rempah kaya, dimasak perlahan hingga bumbu meresap."
    },
    {
      "title": "Sate",
      "description":
          "Tusuk-tusuk daging yang dibakar dan disajikan dengan saus kacang gurih. Bisa menggunakan daging ayam, kambing, atau sapi."
    },
    {
      "title": "Gado-Gado",
      "description":
          "Salad khas Indonesia terdiri dari sayuran rebus, tahu, tempe, dan telur, disiram saus kacang yang gurih."
    },
    {
      "title": "Soto Betawi",
      "description":
          "Sup dengan kuah santan gurih, berisi daging sapi dan jeroan. Disajikan dengan emping dan nasi."
    },
    {
      "title": "Bakso",
      "description":
          "Bola daging disajikan dalam kuah kaldu gurih, biasanya dengan mi, tahu, sayuran, dan sambal."
    },
    {
      "title": "Pempek",
      "description":
          "Makanan khas Palembang terbuat dari ikan dan tepung tapioka, disajikan dengan kuah cuka asam pedas."
    },
    {
      "title": "Gudeg",
      "description":
          "Hidangan manis dari nangka muda dimasak dengan santan, sering disajikan dengan ayam, telur, dan sambal."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo Alfian',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Makan apa hari ini',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Icon(Icons.shopping_bag)
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: makananTradisional.length,
              itemBuilder: (context, index) {
                return Listitem(
                    image: 'lib/asset/makanan1.jpg',
                    title: makananTradisional[index]["title"]!,
                    desc: makananTradisional[index]["description"]!);
              },
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home)),
      //   BottomNavigationBarItem(icon: Icon(Icons.message)),
      //   BottomNavigationBarItem(icon: Icon(Icons.trolley)),
      //   BottomNavigationBarItem(icon: Icon(Icons.person)),
      // ]),
    );
  }
}
