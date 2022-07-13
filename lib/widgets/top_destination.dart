import 'package:flutter/material.dart';
import 'package:travel_app/constants/constants.dart';

class TopDestination extends StatelessWidget {
  TopDestination({Key? key}) : super(key: key);

  final List<DestinationModel> destination = [
    DestinationModel("Eiffel Tower", "dimg1.jpg"),
    DestinationModel("Montjuïc National Palace", "dimg2.jpg"),
    DestinationModel(
      "Tower Bridge",
      "dimg3.jpg",
    ),
    DestinationModel(
      "Golden Gate Bridge",
      "dimg4.jpg",
    ),
    DestinationModel(
      "Statue of Liberty",
      "dimg5.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          destination.length,
          (index) => Container(
            width: 150,
            height: 200,
            margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.darken),
                  image: AssetImage("assets/images/${destination[index].img}"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    color: Colors.black,
                    child: Column(
                      children: [
                        Expanded(
                          child: Text(
                            destination[index].name,
                            style: medium.copyWith(color: white, fontSize: 15),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DestinationModel {
  final String name;
  final String img;

  DestinationModel(
    this.name,
    this.img,
  );
}
