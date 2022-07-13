import 'package:flutter/material.dart';
import 'package:travel_app/constants/constants.dart';

import '../widgets/tab_widget.dart';
import '../widgets/top_city.dart';
import '../widgets/top_destination.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/menu.png",
                          height: 30,
                          width: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                              color: Colors.black87, shape: BoxShape.circle),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/search_dg.jpg",
                                    ),
                                    fit: BoxFit.contain)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hey' Dharmin",
                      style: semiBold.copyWith(color: greey, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "in France, the Eiffel Tower Is Also Called La Tour Eiffel, One of the Most Famous Landmarks in the World.",
                      style: regular.copyWith(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorColor: black,
                            style: regular.copyWith(color: black),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 30,
                                color: grey,
                              ),
                              hintText: "Search",
                              hintStyle: const TextStyle(color: grey),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18),
                                borderSide: const BorderSide(color: grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 48,
                          width: 56,
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Image.asset(
                              "assets/icons/filter.png",
                              width: 24,
                              height: 24,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: TabWidget(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top City",
                          style: semiBold.copyWith(color: black, fontSize: 20),
                        ),
                        Text(
                          "View All",
                          style: regular.copyWith(color: blue, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailScreen()));
                      },
                      child: TopCity()),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Destination",
                          style: semiBold.copyWith(color: black, fontSize: 20),
                        ),
                        Text(
                          "View All",
                          style: regular.copyWith(color: blue, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailScreen()));
                      },
                      child: TopDestination()),
                  const SizedBox(
                    height: 30,
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
