import 'package:ecommerce_app_ui/screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({Key? key}) : super(key: key);

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    sf = Provider.of(context, listen: false);
    st = Provider.of(context, listen: true);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  color: Colors.grey.shade100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Icon(Icons.arrow_back_ios_new,
                                      color: Colors.black),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    sf!.likeitem(index);
                                  },
                                  icon: Icon(
                                      sf!.filterlist[index].like == true
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: sf!.filterlist[index].like == true
                                          ? Colors.red.shade400
                                          : Colors.black))
                            ],
                          ),
                        ),
                        Image.asset("${sf!.filterlist[index].img}",
                            height: 350, width: 350, fit: BoxFit.fill)
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 430,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 200,
                                child: Text("${sf!.filterlist[index].name}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge)),
                            Row(mainAxisSize: MainAxisSize.min, children: [
                              Icon(Icons.alarm, color: Colors.red, size: 18),
                              Text("10-15 Mins"),
                            ]),
                          ],
                        ),
                        Container(
                            width: double.infinity,
                            child: Text(
                                "nsdgfjsjdigfdjjjkfdhvhdfgjhdkugdhfjdhfjdfdfdhfhjbhdghfdbdfyusfdjfhjdfghdfgdfhgdfhfjdfhgjyfubnjvchbghb",
                                style: Theme.of(context).textTheme.titleSmall)),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Toping for you",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("Clear",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          height: 60,
                          child: ListView(
                            children: [
                              toping("🍅"),
                              toping("🥒"),
                              toping("🍟"),
                              toping("🥜"),
                              toping("🧀"),
                              toping("🧈"),
                              toping("🍦"),
                              toping("🧂"),
                              toping("🍞"),
                              toping("🍿"),
                            ],
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Price",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text(
                                    "\$${st!.filterlist[index].price! * st!.filterlist[index].qa!}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontSize: 25)),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    "ADD CART",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  margin: EdgeInsets.all(10),
                                  behavior: SnackBarBehavior.floating,
                                  duration: Duration(seconds: 2),
                                  backgroundColor: Colors.amber.shade500,
                                ));
                                sf!.cartlist.add(sf!.filterlist[index]);
                              },
                              child: Container(
                                height: 60,
                                width: 160,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15))),
                                child: Text("🛒 Add To cart",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Align(
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 4,
                                spreadRadius: 4)
                          ]),
                      child: Text("⭐5.0"),
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.orange.shade100,
                                spreadRadius: 3,
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                sf!.decrement(index);
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.black,
                              )),
                          Text("${st!.filterlist[index].qa}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18)),
                          IconButton(
                              onPressed: () {
                                sf!.increment(index);
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget toping(String s) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 60,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200),
        child: Text("$s", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
