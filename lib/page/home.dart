import 'package:flutter/material.dart';
import 'item.dart';
import 'details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final List<Items> allItems = [
    Items(img: 'grape.png', img2: 'grape2.png', name: "Grape", price: "70.000", star: "2.1"),
    Items(img: 'apple.png', img2: 'apple2.png', name: "Apple", price: "30.000", star: "2.9"),
    Items(img: 'grape.png', img2: 'grape2.png', name: "Mushroom", price: "50.000", star: "2.0"),
  ];

  final int _currentPageIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings settings) {
          if (settings.name == '/details') {
            return MaterialPageRoute(
              builder: (BuildContext context) => const Details(),
            );
          }
          return null;
        },
        home: Scaffold(
            key: _scaffoldKey,
            backgroundColor: const Color(0xFF1E1E1E),
            body: ListView(scrollDirection: Axis.vertical, children: [
              Center(
                  child: Column(
                children: [
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(top: 10),
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    _scaffoldKey.currentState?.openDrawer();
                                  },
                                  child: SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset(
                                        "images/sidebar.png",
                                      )),
                                ),
                              ),
                              const Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                  )),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 32,
                                        height: 29,
                                        child: Image.asset(
                                          "images/bag.png",
                                        )),
                                    const SizedBox(width: 7),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: CircleAvatar(
                                        radius: 19.0,
                                        child: ClipOval(
                                          child: Image.asset(
                                            'images/wp.jpg',
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: Stack(
                            children: [
                              Positioned(
                                top: -15,
                                right: 0,
                                child: Container(
                                  height: 190,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'images/fruit.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.1),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0x502C2C2C),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  width: 265,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 6),
                                        child: const Text(
                                          'OFFER',
                                          style: TextStyle(
                                              letterSpacing: 6,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Roboto",
                                              fontSize: 13,
                                              color: Color(0xFFf1ab68)),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Discount up to 40% Off',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 23,
                                            letterSpacing: 0.9,
                                            fontFamily: "Roboto",
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                      const SizedBox(height: 10),
                                      const SizedBox(
                                        width: 200,
                                        child: Text(
                                          "In honor of World Health Day We'd like to give you this amazing offers.",
                                          style: TextStyle(
                                              fontSize: 12,
                                              letterSpacing: 0.6,
                                              fontFamily: "Roboto",
                                              color: Color(0xFFFFFFFF)),
                                        ),
                                      ),
                                      const SizedBox(height: 15),
                                      TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  )),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color(0xFFf1ab68)),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color(0xFF141414)),
                                          padding: MaterialStateProperty.all<
                                              EdgeInsets>(
                                            const EdgeInsets.fromLTRB(
                                                27, 19, 27, 19),
                                          ),
                                        ),
                                        child: const Text(
                                          'View Offers',
                                          style: TextStyle(
                                            fontFamily: "Roboto-Bold",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
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
                          margin: const EdgeInsets.fromLTRB(2, 25, 0, 0),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 4,
                                child: SizedBox(
                                  width: 800,
                                  child: Text(
                                    "Recommended Fruits",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFB2B2B9)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 8, 0, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xFF1E1E1E)),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xFFf1ab68)),
                                        padding: MaterialStateProperty.all<
                                            EdgeInsets>(
                                          const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                        ),
                                      ),
                                      child: Row(
                                        children: const [
                                          Text(
                                            'View All',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Roboto",
                                              fontSize: 12,
                                            ),
                                          ),
                                          Icon(Icons.arrow_forward_ios)
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 275,
                          color: Colors.transparent,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: allItems.length,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Details(),
                                        settings: RouteSettings(
                                          arguments: allItems[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(1, 0, 35, 20),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          child: Image.asset(
                                            'images/${allItems[index].img}',
                                            fit: BoxFit.cover,
                                            height: 120,
                                            width: 130,
                                          ),
                                        ),
                                        Positioned(
                                          top: 115,
                                          left: -5.6,
                                          child: Card(
                                            color: const Color(0xFF000000),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: SizedBox(
                                              height: 108,
                                              width: 133,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          17, 10, 17, 0),
                                                      child: Row(
                                                        children: [
                                                          const Text(
                                                            "FRUIT",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                letterSpacing:
                                                                    3.9,
                                                                fontFamily:
                                                                    "Roboto-Bold",
                                                                color: Color(
                                                                    0xFFf1ab68)),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .fromLTRB(
                                                              4,
                                                              0,
                                                              0,
                                                              15,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                const Icon(
                                                                  Icons
                                                                      .star_rate_rounded,
                                                                  size: 18,
                                                                  color: Color(
                                                                      0xFFf1ab68),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 2),
                                                                  child: Text(
                                                                    allItems[
                                                                            index]
                                                                        .star,
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            10,
                                                                        letterSpacing:
                                                                            0.9,
                                                                        fontFamily:
                                                                            "Roboto-Bold",
                                                                        color: Color(
                                                                            0xFFFFFFFF)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(17, 2, 17, 0),
                                                    child: Text(
                                                      allItems[index].name,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          letterSpacing: 0.5,
                                                          fontFamily: "Roboto",
                                                          color: Color(
                                                              0xFFFFFFFF)),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(17, 8, 10, 0),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Text(
                                                            "Rp. ${allItems[index].price}",
                                                            style: const TextStyle(
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    "Roboto",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                    0xFFf1ab68)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    2, 7, 0, 0),
                                                            child: const Text(
                                                              "per kg",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Roboto",
                                                                  fontSize: 10,
                                                                  color: Color(
                                                                      0xFFFFFFFF)),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            ]),
            drawer: Drawer(
              backgroundColor: const Color(0xFF2c2c2c),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(color: Color(0xFF1e1e1e)),
                    accountName: const Text(
                      'Alireza Firouzja',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        letterSpacing: 1,
                      ),
                    ),
                    accountEmail: const Text(
                      'gmfirouzja@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      child: ClipOval(
                          child: Image.asset(
                        "images/wp.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      )),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Page 1'),
                    onTap: () {},
                    selected: _currentPageIndex == 0,
                    selectedColor: Colors.white,
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Page 2'),
                    onTap: () {},
                    selected: _currentPageIndex == 1,
                    selectedColor: Colors.white,
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('Page 3'),
                    onTap: () {},
                    selected: _currentPageIndex == 2,
                    selectedColor: Colors.white,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              height: 60,
              // peding
              decoration: const BoxDecoration(
                color: Color(0xFF2c2c2c),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFf1ab68),
                            borderRadius: BorderRadius.circular(30)),
                        width: 55,
                        height: 3,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const Icon(
                          Icons.home,
                          color: Color(0xFFf1ab68),
                          size: 34,
                        ),
                      )
                    ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      Container(
                        width: 55,
                        height: 3,
                        decoration: BoxDecoration(
                            color: const Color(0xFF2c2c2c),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const Icon(
                          Icons.search,
                          color: Color(0xFFa8a8a8),
                          size: 34,
                        ),
                      )
                    ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      Container(
                        width: 55,
                        height: 3,
                        decoration: BoxDecoration(
                            color: const Color(0xFF2c2c2c),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const Icon(
                          Icons.favorite_rounded,
                          color: Color(0xFFa8a8a8),
                          size: 34,
                        ),
                      )
                    ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      Container(
                        width: 55,
                        height: 3,
                        decoration: BoxDecoration(
                            color: const Color(0xFF2c2c2c),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: const Icon(
                          Icons.event_note_rounded,
                          color: Color(0xFFa8a8a8),
                          size: 34,
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            )));
  }
}

// <a href="https://www.freepik.com/free-photo/green-red-grape-isolated-white_1007838.htm#query=grape&position=8&from_view=keyword&track=sph">Image by jannoon028</a> on Freepik
