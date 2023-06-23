import 'dart:math';

import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  const BoxCard({super.key, required this.name, required this.image, required this.open});


  final String image;
  final String name;
  final bool open;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(40.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 80.0,
                color: Colors.white,
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                      name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height*0.026
                    ),
                  ),
                  const Spacer(),
                  Transform.rotate(
                    angle: pi/2,
                    child: Switch(
                      activeColor: Colors.deepPurpleAccent,
                      value: open,
                      onChanged: (value) {}
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
