import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> _categories = [
    'Wearables',
    'TVs',
    'Laptops',
    'Tablets',
    'Computers',
    'Printers',
    'Scanners'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 460,
              collapsedHeight: 460,
              backgroundColor: Colors.white,
              flexibleSpace: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Let's gets something",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4F4C4C)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 150,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF46D38),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "50% off During \nCovid 19",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/electronic.png",
                                            width: 130,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 150,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "50% off During \nCovid 19",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/image2.png",
                                            width: 130,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 150,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "50% off During \nCovid 19",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image.asset(
                                              "assets/image3.png",
                                              width: 130,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Categories",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                "View all",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.orange),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _categories.length,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 5),
                                      child: Text(_categories[index]),
                                    )),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Card(
                          elevation: 5,
                          child: ListTile(
                            leading: CircleAvatar(),
                            title: Text("Title"),
                            subtitle: Text("This is example"),
                            trailing: Text("\$ 500"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ];
        },
        body: Expanded(
            child: Container(
                child: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 90 / 100, crossAxisCount: 2),
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  elevation: 10,
                  child: Stack(clipBehavior: Clip.none, children: [
                    Positioned(
                        top: -40,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Image.asset(
                            "assets/laptop.png",
                            width: 140,
                          ),
                        )),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 120, left: 0),
                        height: 30,
                        width: 90,
                        child: Stack(children: [
                          RaisedButton(
                            onPressed: () {
                              debugPrint('Buy Click');
                            },
                            hoverElevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80)),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [Colors.red, Colors.redAccent],
                                        begin: Alignment.topLeft,
                                        end: Alignment.topRight),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 80, left: 0),
                          child: Center(
                              child: Text(
                            "Mac Air 2020",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 0),
                          child: Center(
                              child: Text(
                            "\$500",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
            );
          },
        ))),
      )),
    );
  }
}
