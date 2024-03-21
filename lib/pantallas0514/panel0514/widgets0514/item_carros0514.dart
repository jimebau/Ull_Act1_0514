import 'package:flutter/material.dart';

class Itemcarro extends StatelessWidget {
  const Itemcarro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xf3d5d5d5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(.1),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ]),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/jimebau/Img_FlutterFlow_IOS_6j/main/Act12_NavBar_FlutterFlow/pro.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Nissan 370z",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    )),
          )
        ],
      ),
    );
  }
}
