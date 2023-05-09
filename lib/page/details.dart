import 'package:flutter/material.dart';
import 'item.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int increment = 1;

  @override
  Widget build(BuildContext context) {
    final passedData = ModalRoute.of(context)!.settings.arguments as Items;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2c2c2c),
        body: Stack(children: [
          Stack(
            children: [
              Container(
                color: const Color(0xFF2c2c2c),
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: 370,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1e1e1e),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(145),
                      topRight: Radius.circular(145),
                    ),
                  ),
                ),
              ),
              // main content
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/");
                                    },
                                    child: const SizedBox(
                                        width: 25,
                                        height: 35,
                                        child: Icon(
                                          Icons.arrow_back,
                                          size: 35,
                                          color: Color(0xFFa7a7a7),
                                        )),
                                  ),
                                ),
                                const Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    width: 10
                                  )
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width: 40,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: CircleAvatar(
                                    radius: 26.0,
                                    backgroundColor: const Color(0xff494949),
                                    child: ClipOval(
                                      child: SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: Image.asset(
                                          "images/bag.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                const Text(
                                  "FRUIT",
                                  style: TextStyle(
                                      fontFamily: "Roboto-Bold",
                                      fontSize: 18,
                                      letterSpacing: 10,
                                      color: Color(0xFFf1ab68)),
                                ),
                                const SizedBox(height: 12),
                                Text(passedData.name,
                                    style: const TextStyle(
                                        fontSize: 35,
                                        letterSpacing: 0.2,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFffffff))),
                                const SizedBox(height: 5),
                                SizedBox(
                                    width: 190,
                                    height: 190,
                                    child: Image.asset(
                                        "images/${passedData.img2}"))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(8, 15, 8, 0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Rp. ${passedData.price}",
                                          style: const TextStyle(
                                              color: Color(0xfff1ab68),
                                              fontFamily: "Roboto",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0.4),
                                              child: const Icon(
                                                Icons.star_rate_rounded,
                                                color: Color(0xFFf1ab68),
                                                size: 17,
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0.4),
                                              child: const Icon(
                                                Icons.star_rate_rounded,
                                                color: Color(0xFFf1ab68),
                                                size: 17,
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0.4),
                                              child: const Icon(
                                                Icons.star_rate_rounded,
                                                color: Color(0xFFf1ab68),
                                                size: 17,
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0.4),
                                              child: const Icon(
                                                Icons.star_rate_rounded,
                                                color: Color(0xFFf1ab68),
                                                size: 17,
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 0.4),
                                              child: const Icon(
                                                Icons.star_rate_rounded,
                                                color: Color(0xFFf1ab68),
                                                size: 17,
                                              ),
                                            ),
                                            Text(
                                              passedData.star,
                                              style: const TextStyle(
                                                  color: Color(0xFFFFFFFF),
                                                  fontSize: 11,
                                                  fontFamily: "Roboto"),
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              13, 37, 0, 0),
                                          child: const Text("Per Kg",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Roboto",
                                                  letterSpacing: 0.6,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFa7a7a7))),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 23),
                                          child: const CircleAvatar(
                                            radius: 29.0,
                                            backgroundColor: Color(0xff2c2c2c),
                                            child: ClipOval(
                                              child: SizedBox(
                                                width: 43,
                                                height: 43,
                                                child: Icon(
                                                  Icons.favorite_border_rounded,
                                                  color: Color(0xffef7d67),
                                                  size: 43,
                                                ),
                                              ),
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
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    height: 110,
                                    width: 70,
                                    child: Column(
                                      children: [
                                        const CircleAvatar(
                                          radius: 29.0,
                                          backgroundColor: Color(0xff2c2c2c),
                                          child: ClipOval(
                                            child: SizedBox(
                                              width: 31,
                                              height: 31,
                                              child: Icon(
                                                Icons.thumb_up_off_alt,
                                                color: Color(0xfff1ab68),
                                                size: 31,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: const Text(
                                            "Quality Assurance",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 14,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    height: 110,
                                    width: 70,
                                    child: Column(
                                      children: [
                                        const CircleAvatar(
                                          radius: 29.0,
                                          backgroundColor: Color(0xff2c2c2c),
                                          child: ClipOval(
                                            child: SizedBox(
                                              width: 31,
                                              height: 31,
                                              child: Icon(
                                                Icons.delivery_dining_outlined,
                                                color: Color(0xfff1ab68),
                                                size: 31,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: const Text(
                                            "Fast Delivery",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 14,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    height: 110,
                                    width: 70,
                                    child: Column(
                                      children: [
                                        const CircleAvatar(
                                          radius: 29.0,
                                          backgroundColor: Color(0xff2c2c2c),
                                          child: ClipOval(
                                            child: SizedBox(
                                              width: 31,
                                              height: 31,
                                              child: Icon(
                                                Icons.fork_left,
                                                color: Color(0xfff1ab68),
                                                size: 31,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: const Text(
                                            "Best-In Taste",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 14,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFF2c2c2c),
                                    ),
                                    width: 100,
                                    height: 42,
                                    child: Row(children: [
                                      Expanded(
                                        flex: 2,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              increment -= 1;
                                            });
                                          },
                                          child: const SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.remove,
                                              color: Color(0xFFFFFFFF),
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: SizedBox(
                                              width: 10,
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text("$increment",
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          fontSize: 17))))),
                                      Expanded(
                                        flex: 2,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              increment += 1;
                                            });
                                          },
                                          child: const SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: Icon(
                                              Icons.add,
                                              color: Color(0xFFFFFFFF),
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                const Expanded(
                                    flex: 1, child: SizedBox(width: 10)),
                                Expanded(
                                  flex: 2,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 17, horizontal: 12),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          backgroundColor:
                                              const Color(0xFFf1ab68)),
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: Row(children: const [
                                          Text(
                                            "Go To Cart",
                                            style: TextStyle(
                                                color: Color(0xFF141414),
                                                fontFamily: "Roboto-Bold",
                                                fontSize: 12),
                                          ),
                                          Icon(Icons.navigate_next,
                                              color: Color(0xFF010100))
                                        ]),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
