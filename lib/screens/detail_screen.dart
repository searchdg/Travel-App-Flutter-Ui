import 'package:flutter/material.dart';
import 'package:travel_app/constants/constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dimg2.jpg"),
                fit: BoxFit.contain)),
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Details",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF8B8B),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1), blurRadius: 16)
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Montjuïc National Palace",
                            style: bold.copyWith(color: black, fontSize: 24),
                          ),
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 24,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "The Palau Nacional is a building on the hill of Montjuïc in Barcelona. It was the main site of the 1929 International Exhibition. It was designed by Eugenio Cendoya and Enric Catà under the supervision of Pere Domènech i Roura.",
                        style: regular.copyWith(color: black, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Distance",
                                style: semiBold.copyWith(
                                    color: black, fontSize: 15),
                              ),
                              Text(
                                "104 ml",
                                style: regular.copyWith(
                                    color: black, fontSize: 11),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Elevation",
                                style: semiBold.copyWith(
                                    color: black, fontSize: 15),
                              ),
                              Text(
                                "3.872",
                                style: regular.copyWith(
                                    color: black, fontSize: 11),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Difficulty",
                                style: semiBold.copyWith(
                                    color: black, fontSize: 15),
                              ),
                              Text(
                                "Easy",
                                style: regular.copyWith(
                                    color: black, fontSize: 11),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Join",
                            style: bold.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
