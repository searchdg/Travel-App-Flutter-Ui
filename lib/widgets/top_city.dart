import 'package:flutter/material.dart';
import 'package:travel_app/constants/constants.dart';

class TopCity extends StatelessWidget {
  TopCity({
    Key? key,
  }) : super(key: key);

  final List<TopCityList> cityList = [
    TopCityList("Paris", "img1.jpeg"),
    TopCityList("Barcelona", "img2.jpg"),
    TopCityList("London", "img3.jpg"),
    TopCityList("San Francisco", "img4.jpg"),
    TopCityList("New York", "img5.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          cityList.length,
          (index) => Container(
            width: 130,
            height: 180,
            margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.darken),
                  image: AssetImage("assets/images/${cityList[index].img}"),
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
                            cityList[index].name,
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

class TopCityList {
  final String name;
  final String img;

  TopCityList(this.name, this.img);
}
