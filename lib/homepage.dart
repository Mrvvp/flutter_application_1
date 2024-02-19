import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final gradient =
      const LinearGradient(colors: [Color(0xffEEA026), Color(0xffE93A27)]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Row(children: [
            const Text(
              "BRAND",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: "Clouders"),
            ),
            ShaderMask(
                shaderCallback: (bounds) {
                  return gradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                },
                child: const Text(
                  "KILN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Clouders"),
                )),
          ]),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_pin,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(
                        "lib/images/Screenshot 2024-02-16 154043kk.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Image(
                image:
                    AssetImage("lib/images/Screenshot 2024-02-16 1557288.png")),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "FIND YOUR",
                  style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "PERFECT CAR",
                  style: TextStyle(
                      color: Color(0xffAB373A),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130,
                height: 25,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1))
                ]),
                child: Center(
                  child: Text(
                    'SEARCH',
                    style: TextStyle(
                        color: Color(0xff828282),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 130,
                height: 25,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1))
                ]),
                child: Center(
                  child: Text(
                    'ASSIST ME',
                    style: TextStyle(
                        color: Color(0xff828282),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 130,
                height: 25,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 1))
                ]),
                child: Center(
                  child: Text(
                    'CONSULT US',
                    style: TextStyle(
                        color: Color(0xff828282),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              color: Color(0xff828282),
              width: MediaQuery.of(context).size.width * 1,
              height: 40,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 35,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 35,
                          color: Colors.black,
                          width: 45,
                          child: IconButton(
                            padding: EdgeInsets.only(bottom: 20),
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 35,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  "Eg:",
                  style: TextStyle(fontSize: 12, color: Color(0xff828282)),
                ),
                Text(
                  "Tata Nexon",
                  style: TextStyle(fontSize: 12, color: Color(0xffAB373A)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffAB373A),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "UNDER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "08",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "LAKHS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Color(0xff828282),
                      indent: 15,
                      endIndent: 15,
                      thickness: 2,
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xff828282),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "UNDER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "15",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "LAKHS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      indent: 15,
                      endIndent: 15,
                      color: Color(0xff828282),
                      thickness: 2,
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xff828282),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "UNDER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "25",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "LAKHS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      indent: 15,
                      endIndent: 15,
                      color: Color(0xff828282),
                      thickness: 2,
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xff828282),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "UNDER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "50",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "LAKHS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Color(0xff828282),
                      indent: 15,
                      endIndent: 15,
                      thickness: 2,
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xff828282),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "UNDER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "60",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Montserrat"),
                          ),
                          Text(
                            "LAKHS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(1, 1))
                        ]),
                    width: 230,
                    height: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "₹ 1.04 *Lakhs",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Color(0xffAB373A),
                                  fontSize: 17),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "onwards",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  "Ex Showroom Price",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 6),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 27),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: (Color(0xffCE171C)),
                                ),
                                width: 30,
                                height: 17,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4.1",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.white,
                                          fontSize: 8),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 27),
                              child: Icon(
                                Icons.bookmark,
                                color: Color(0xff5D5C5A),
                              ),
                            )
                          ],
                        ),
                        Image(
                            image: AssetImage(
                                "lib/images/eb616e37f7b18fda5e99c47228402d53.png")),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Mercedes-Benz",
                            style: TextStyle(
                                color: Color(0xff5D5C5A),
                                fontSize: 15,
                                fontFamily: "Hyperspace"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "E-Class Cabriolet",
                            style: TextStyle(
                                color: Color(0xffAB373A),
                                fontSize: 15,
                                fontFamily: "Hyperspace"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image(
                            image: AssetImage(
                                "lib/images/Screenshot 2024-02-19 120508s.png")),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(1, 1))
                        ]),
                    width: 230,
                    height: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "₹ 1.04 *Lakhs",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Color(0xffAB373A),
                                  fontSize: 17),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "onwards",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  "Ex Showroom Price",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 6),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 27),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: (Color(0xffCE171C)),
                                ),
                                width: 30,
                                height: 17,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4.1",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.white,
                                          fontSize: 8),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 27),
                              child: Icon(
                                Icons.bookmark,
                                color: Color(0xff5D5C5A),
                              ),
                            )
                          ],
                        ),
                        Image(
                            image: AssetImage(
                                "lib/images/eb616e37f7b18fda5e99c47228402d53.png")),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Mercedes-Benz",
                            style: TextStyle(
                                color: Color(0xff5D5C5A),
                                fontSize: 15,
                                fontFamily: "Hyperspace"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "E-Class Cabriolet",
                            style: TextStyle(
                                color: Color(0xffAB373A),
                                fontSize: 15,
                                fontFamily: "Hyperspace"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image(
                            image: AssetImage(
                                "lib/images/Screenshot 2024-02-19 120508s.png")),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(1, 1))
                        ]),
                    width: 230,
                    height: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "₹ 1.04 *Lakhs",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Color(0xffAB373A),
                                  fontSize: 17),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "onwards",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  "Ex Showroom Price",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 6),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 27),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: (Color(0xffCE171C)),
                                ),
                                width: 30,
                                height: 17,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "4.1",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.white,
                                          fontSize: 8),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 27),
                              child: Icon(
                                Icons.bookmark,
                                color: Color(0xff5D5C5A),
                              ),
                            )
                          ],
                        ),
                        Image(
                            image: AssetImage(
                                "lib/images/eb616e37f7b18fda5e99c47228402d53.png")),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Mercedes-Benz",
                            style: TextStyle(
                                color: Color(0xff5D5C5A),
                                fontSize: 15,
                                fontFamily: "Hyperspace"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "E-Class Cabriolet",
                            style: TextStyle(
                                color: Color(0xffAB373A),
                                fontSize: 15,
                                fontFamily: "Hyperspace"),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image(
                            image: AssetImage(
                                "lib/images/Screenshot 2024-02-19 120508s.png")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "FUEL",
                  style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "PRICE",
                  style: TextStyle(
                      color: Color(0xffAB373A),
                      fontSize: 25,
                      fontFamily: "Hyperspace"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  width: 110,
                  height: 25,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Choose City",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color(0xffAB373A),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  width: 100,
                  height: 25,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Fuel Type",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Color(0xffAB373A),
                          )),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.centerRight,
                color: Color(0xff828282),
                width: 50,
                height: 60,
                child: Center(
                    child: Text(
                  " INR\n100.5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: "Montserrat"),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 50,
                  height: 60,
                  child: Image(
                    image: AssetImage(
                        "lib/images/Screenshot 2024-02-19 131905o.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Color(0xffD3D3D3),
            width: MediaQuery.of(context).size.width,
            height: 430,
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FEATURED",
                      style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 23,
                          fontFamily: "Hyperspace"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "CARS",
                      style: TextStyle(
                          color: Color(0xffAB373A),
                          fontSize: 23,
                          fontFamily: "Hyperspace"),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  color: Colors.white,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Container(
                          width: 155,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff5D5C5A),
                          ),
                          child: Center(
                            child: Text(
                              "POPULAR",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          width: 155,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff828282),
                          ),
                          child: Center(
                            child: Text(
                              "NEW",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          width: 150,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xffAFACAD),
                          ),
                          child: Center(
                            child: Text(
                              "UPCOMING",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          width: 150,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "SAVED CARS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(1, 1))
                            ]),
                        width: 230,
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 1.04 *Lakhs",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Color(0xffAB373A),
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Text(
                                        "onwards",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      "Ex Showroom Price",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 6),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 27),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: (Color(0xffCE171C)),
                                    ),
                                    width: 30,
                                    height: 17,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4.1",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.white,
                                              fontSize: 8),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 8,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 27),
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Color(0xff5D5C5A),
                                  ),
                                )
                              ],
                            ),
                            Image(
                                image: AssetImage(
                                    "lib/images/eb616e37f7b18fda5e99c47228402d53.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Mercedes-Benz",
                                style: TextStyle(
                                    color: Color(0xff5D5C5A),
                                    fontSize: 15,
                                    fontFamily: "Hyperspace"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "E-Class Cabriolet",
                                style: TextStyle(
                                    color: Color(0xffAB373A),
                                    fontSize: 15,
                                    fontFamily: "Hyperspace"),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Image(
                                image: AssetImage(
                                    "lib/images/Screenshot 2024-02-19 120508s.png")),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(1, 1))
                            ]),
                        width: 230,
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 1.04 *Lakhs",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Color(0xffAB373A),
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Text(
                                        "onwards",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      "Ex Showroom Price",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 6),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 27),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: (Color(0xffCE171C)),
                                    ),
                                    width: 30,
                                    height: 17,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4.1",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.white,
                                              fontSize: 8),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 8,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 27),
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Color(0xff5D5C5A),
                                  ),
                                )
                              ],
                            ),
                            Image(
                                image: AssetImage(
                                    "lib/images/eb616e37f7b18fda5e99c47228402d53.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Mercedes-Benz",
                                style: TextStyle(
                                    color: Color(0xff5D5C5A),
                                    fontSize: 15,
                                    fontFamily: "Hyperspace"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "E-Class Cabriolet",
                                style: TextStyle(
                                    color: Color(0xffAB373A),
                                    fontSize: 15,
                                    fontFamily: "Hyperspace"),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Image(
                                image: AssetImage(
                                    "lib/images/Screenshot 2024-02-19 120508s.png")),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(1, 1))
                            ]),
                        width: 230,
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "₹ 1.04 *Lakhs",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Color(0xffAB373A),
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Text(
                                        "onwards",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      "Ex Showroom Price",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 6),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 27),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: (Color(0xffCE171C)),
                                    ),
                                    width: 30,
                                    height: 17,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4.1",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.white,
                                              fontSize: 8),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 8,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 27),
                                  child: Icon(
                                    Icons.bookmark,
                                    color: Color(0xff5D5C5A),
                                  ),
                                )
                              ],
                            ),
                            Image(
                                image: AssetImage(
                                    "lib/images/eb616e37f7b18fda5e99c47228402d53.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Mercedes-Benz",
                                style: TextStyle(
                                    color: Color(0xff5D5C5A),
                                    fontSize: 15,
                                    fontFamily: "Hyperspace"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "E-Class Cabriolet",
                                style: TextStyle(
                                    color: Color(0xffAB373A),
                                    fontSize: 15,
                                    fontFamily: "Hyperspace"),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Image(
                                image: AssetImage(
                                    "lib/images/Screenshot 2024-02-19 120508s.png")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Image(
              image:
                  AssetImage("lib/images/Screenshot 2024-02-19 1915025df.png"),
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BROWSE BY",
                  style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "BRANDS",
                  style: TextStyle(
                      color: Color(0xffAB373A),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  width: 50,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/BMW.png")),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "BMW",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "Montserrat"),
                      )
                    ],
                  )),
              Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/FORD.png")),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "FORD",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "Montserrat"),
                      )
                    ],
                  )),
              Container(
                  height: 100,
                  width: 50,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/HONDA.png")),
                      SizedBox(
                        height: 19,
                      ),
                      Text(
                        "HONDA",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "Montserrat"),
                      )
                    ],
                  )),
              Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/AUDI.png")),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "AUDI",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "Montserrat"),
                      )
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  width: 90,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/MERCEDES.png")),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "MERCEDES",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "Montserrat"),
                      )
                    ],
                  )),
              Container(
                  height: 100,
                  width: 70,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/VOLKSWAAGON.png")),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "VOLKSWAGEN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "Montserrat"),
                      )
                    ],
                  )),
              Container(
                  height: 110,
                  width: 80,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/SKODA.png")),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "SKODA",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: "Montserrat"),
                      )
                    ],
                  )),
              Container(
                  height: 100,
                  width: 80,
                  child: Column(
                    children: [
                      Image(image: AssetImage("lib/images/NISSAN.png")),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "NISSAN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: "Montserrat"),
                      ),
                    ],
                  )),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 150,
              height: 40,
              color: Color(0xff828282),
              child: Center(
                child: Text(
                  "LOAD MORE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "Montserrat"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 250,
                  color: Colors.black,
                ),
                Container(
                  width: 40,
                  height: 250,
                  color: Color(0xffAB373A),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Center(
                      child: Text(
                        "YOUTUBE VIDEOS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Hyperspace"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 1))
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Image(
                              image: AssetImage("lib/images/thar1.png"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60, left: 100),
                              child: Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    "lib/images/ab4445594cd2a54a53299b0a24aefceb.png"),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Thar is back",
                              style: TextStyle(
                                  fontFamily: "Hyperspace",
                                  color: Color(0xff828282),
                                  fontSize: 15)),
                          Text(
                            "The Thar was first introduced in 2010\nas a modernized version",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff828282)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 1))
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Image(
                              image: AssetImage("lib/images/thar1.png"),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 60, left: 100),
                              child: Image(
                                width: 40,
                                height: 40,
                                image: AssetImage(
                                    "lib/images/ab4445594cd2a54a53299b0a24aefceb.png"),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Thar is back",
                              style: TextStyle(
                                  fontFamily: "Hyperspace",
                                  color: Color(0xff828282),
                                  fontSize: 15)),
                          Text(
                            "The Thar was first introduced in 2010\nas a modernized version",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff828282)),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CAR",
                  style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "COMPARISON",
                  style: TextStyle(
                      color: Color(0xffAB373A),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    height: 200,
                    child: Image(
                      image: AssetImage(
                          "lib/images/1942a0af77994537c82fe301dd20bd2f.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                    Container(
                    width: 350,
                    height: 200,
                    child: Image(
                      image: AssetImage(
                          "lib/images/1942a0af77994537c82fe301dd20bd2f.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Stack(children: 
          [Container(width: MediaQuery.of(context).size.width,
            child: Image(
              
              image: AssetImage("lib/images/bnzz.png"),fit: BoxFit.contain,),
          ),
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Text("YouTube Creative",style: TextStyle(color: Colors.white,fontFamily: "Hyperspace",fontSize: 25),),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_circle_fill,color: Color(0xffEB0929),size: 40,),
                    SizedBox(width: 3,),
                    Text("About Us Video",style: TextStyle(color: Colors.white),),
                    
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 3,),
                    SizedBox(width: 3,),
                    CircleAvatar(radius: 3,),
                    SizedBox(width: 3,),
                    CircleAvatar(radius: 3,),
                    SizedBox(width: 3,),
                    CircleAvatar(radius: 3,),
                    SizedBox(width: 3,),
                    CircleAvatar(radius: 3,),
                  ],
                )
              ],
            ),
          ))
          ]),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TOP PICKS FOR",
                  style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "YOU",
                  style: TextStyle(
                      color: Color(0xffAB373A),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(1, 1))
                          ]),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(children: [
                                  Image(
                                    image: AssetImage("lib/images/thar1.png"),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 60, left: 100),
                                    child: Image(
                                      width: 40,
                                      height: 40,
                                      image: AssetImage(
                                          "lib/images/ab4445594cd2a54a53299b0a24aefceb.png"),
                                    ),
                                  ),
                                ]),
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Thar is back",
                                    style: TextStyle(
                                        fontFamily: "Hyperspace",
                                        color: Color(0xff828282),
                                        fontSize: 15)),
                                Text(
                                  "The Thar was first introduced in 2010\nas a modernized version",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff828282)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(1, 1))
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Image(
                                image: AssetImage("lib/images/odi.png"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 100),
                                child: Image(
                                  width: 40,
                                  height: 40,
                                  image: AssetImage(
                                      "lib/images/ab4445594cd2a54a53299b0a24aefceb.png"),
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Audi Luxury",
                                style: TextStyle(
                                    fontFamily: "Hyperspace",
                                    color: Color(0xff828282),
                                    fontSize: 15)),
                            Text(
                              "The Audi was first introduced in 2020 \nas a modernized version",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff828282)),
                            )
                          ],
                        ),
                      ),
                    ),
                                    ),
                                    Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(1, 1))
                      ]),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Image(
                                image: AssetImage("lib/images/thar1.png"),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 100),
                                child: Image(
                                  width: 40,
                                  height: 40,
                                  image: AssetImage(
                                      "lib/images/ab4445594cd2a54a53299b0a24aefceb.png"),
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 30,
                            ),
                            Text("Thar is back",
                                style: TextStyle(
                                    fontFamily: "Hyperspace",
                                    color: Color(0xff828282),
                                    fontSize: 15)),
                            Text(
                              "The Thar was first introduced in 2010\nas a modernized version",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff828282)),
                            )
                          ],
                        ),
                      ),
                    ),
                                    )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                 Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NEWS",
                  style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "UPDATE",
                  style: TextStyle(
                      color: Color(0xffAB373A),
                      fontSize: 23,
                      fontFamily: "Hyperspace"),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 287,
                  height: 161,
                  
                  child: Image(image: AssetImage("lib/images/123.png"),),
                ),
                SizedBox(width: 10,),
                 Container(
                  width: 287,
                  height: 161,
                  
                  child: Image(image: AssetImage("lib/images/234.png"),),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Container(width: MediaQuery.of(context).size.width,
          height: 150,
          color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 30),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                const Text(
                  "BRAND",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: "Clouders"),
                ),
                ShaderMask(
                    shaderCallback: (bounds) {
                      return gradient.createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                    },
                    child: const Text(
                      "KILN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Clouders"),
                    )),
                    Spacer(),

                    CircleAvatar(
                      backgroundColor: Color(0xff343434),
                      child: Icon(Icons.email_outlined,color: Color(0xffA5A5A5),)),
SizedBox(width: 10,),
                                          CircleAvatar(
                      backgroundColor: Color(0xff343434),
                      child: Icon(Icons.facebook,color: Color(0xffA5A5A5),)),
                                          SizedBox(width: 10,),
                                          CircleAvatar(
                      backgroundColor: Color(0xff343434),
                      child: Icon(Icons.youtube_searched_for,color: Color(0xffA5A5A5),)),
                                          SizedBox(width: 10,),
                                         
              ]),
            ),
          ),
          
        ]),
      ),
    );
  }
}
