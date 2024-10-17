import 'package:flutter/material.dart';

class Listitem extends StatelessWidget {
  Listitem(
      {super.key,
      required this.title,
      required this.desc,
      required this.image});

  String title;
  String desc;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 130,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(30)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                desc,
                maxLines: 2,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                overflow: TextOverflow.clip,
              ),
            ],
          )),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
