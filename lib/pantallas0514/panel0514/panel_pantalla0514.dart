//PanelPantalla_0514
import 'package:flutter/material.dart';
import 'package:ull_act1_0514/pantallas0514/panel0514/widgets0514/item_carros0514.dart';

// ignore: camel_case_types
class PanelPantalla_0514 extends StatelessWidget {
  const PanelPantalla_0514({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Color(0xffffffff),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/jimebau/Img_FlutterFlow_IOS_6j/main/Act12_NavBar_FlutterFlow/empleadoo.png"),
              ),
            )
          ],
          title: const Text(
            'Bautista Carros 0514',
            style: TextStyle(color: Color(0xffffffff)),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xff7a7272),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(.100),
                      spreadRadius: 5,
                      blurRadius: 5,
                    )
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Buscar",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500, color: Color(0xffffffff)),
                    border: InputBorder.none,
                    prefix: Icon(Icons.search, color: Color(0xff000000))),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/jimebau/Img_FlutterFlow_IOS_6j/main/Act12_NavBar_FlutterFlow/pro.jpg"))),
            ),
            ListTile(
              title: const Text("Modelos Nissan "),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: const Icon(Icons.filter_list),
            ),
            Expanded(
                child: GridView.count(
              padding: const EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 28,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Itemcarro()],
            ))
          ],
        ));
  }
}
