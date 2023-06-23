import 'package:flutter/material.dart';
import 'package:smart_home/components/box_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List devices = [
    ["Smart \n Light", "assets/icons/light-bulb.png", true],
    ["Smart \n AC", "assets/icons/air-conditioner.png", false],
    ["Smart \n TV", "assets/icons/smart-tv.png", false],
    ["Smart \n Fan", "assets/icons/fan.png", true],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 30.0,
                  right: 30.0
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap:() {},
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                          "assets/icons/menu.png",
                        color: Colors.white,
                        height: 45.0,
                        width: 43.0,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                            Icons.person,
                          color: Colors.white,
                          size: 40.0,

                        )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.045,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Welcome Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height*0.02,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.01,
                    ),
                    Text(
                      "Hazem Elmasry",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height*0.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.05,
                    ),
                    Text(
                      "Smart Devices",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height*0.025,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: devices.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      childAspectRatio: 1/1.3
                    ),
                    itemBuilder: (context, index) {
                      return  BoxCard(
                        name: devices[index][0],
                        image: devices[index][1],
                        open: devices[index][2],
                      );
                    },
                ),
              )
            ],
          )
      ),
    );
  }
}
