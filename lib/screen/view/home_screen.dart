import 'package:ecommerce_app_ui/screen/provider/ecommerce_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Shoppingprovider? sf;
Shoppingprovider? st;

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    sf = Provider.of(context, listen: false);
    st = Provider.of(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 10, bottom: 10, right: 10),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade100,
                                      blurRadius: 5,
                                      spreadRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Icon(Icons.sort, color: Colors.black),
                          ),
                          Text("Healthy Food",
                              style: Theme.of(context).textTheme.titleLarge),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade100,
                                      blurRadius: 5,
                                      spreadRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                                    fit: BoxFit.cover)),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,
                                color: Colors.black, size: 25),
                            suffixIcon: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade100,
                                        blurRadius: 5,
                                        spreadRadius: 3)
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Icon(Icons.tune, color: Colors.black),
                            ),
                            hintText: "Search Food",
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: 40,
                      width: double.infinity,
                      child: ListView(
                        children: [
                          InkWell(
                              onTap: () {
                                st!.fastfood();
                              },
                              child: typefood("Fast Food",
                                  "assets/fastfood.png", sf!.fast)),
                          InkWell(
                              onTap: () {
                                st!.fruitsop();
                              },
                              child: typefood(
                                  "Fruits", "assets/fruite.png", sf!.fruit)),
                          InkWell(
                              onTap: () {
                                st!.dessertop();
                              },
                              child: typefood(
                                  "Dessert", "assets/cake.png", sf!.dessert)),
                          InkWell(
                              onTap: () {
                                st!.drinkop();
                              },
                              child: typefood(
                                  "Drink", "assets/drink.png", sf!.drink)),
                        ],
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      height: 200,
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: InkWell(
                                onTap: () => Navigator.pushNamed(context, 'detail',arguments: index),
                                child: Stack(
                                  alignment: Alignment(1, -2),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        width: 120,
                                        height: 180,
                                        alignment: Alignment.bottomCenter,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.shade100,
                                                blurRadius: 2,
                                                spreadRadius: 3)
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "${sf!.filterlist[index].name}",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 18)),
                                                Text(
                                                    "${sf!.filterlist[index].foodtype}",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleSmall),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "\$${sf!.filterlist[index].price}",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleMedium),
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
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Image.asset("${sf!.filterlist[index].img}",
                                        width: 120,
                                        height: 120,
                                        fit: BoxFit.fill),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: st!.filterlist.length),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Favorite Restaurants",
                              style: Theme.of(context).textTheme.titleMedium),
                          Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      alignment: Alignment.center,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          hotal(
                              "https://cdn0.weddingwire.in/vendor/6890/3_2/960/jpg/party-lounge-tulsi-restaurant-banquet-party-lounge2_15_296890-159663380453556.jpeg",
                              "TGB",
                              "Valsad,Mumbai"),
                          hotal(
                              "https://media-cdn.tripadvisor.com/media/photo-s/10/25/c9/b3/stylish-brand-new-interior.jpg",
                              "Tulsi restaurant",
                              "Adajan,Surat"),
                          hotal(
                              "https://assets.bonappetit.com/photos/610aa6ddc50e2f9f7c42f7f8/16:9/w_2560%2Cc_limit/Savage-2019-top-50-busy-restaurant.jpg",
                              "Gj-5",
                              "Amroli,surat"),
                          hotal(
                              "https://assets.bonappetit.com/photos/610aa6ddc50e2f9f7c42f7f8/16:9/w_2560%2Cc_limit/Savage-2019-top-50-busy-restaurant.jpg",
                              "Tulsi restaurant",
                              "Adajan,Surat"),
                        ],
                        scrollDirection: Axis.horizontal,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 75,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.grid_view_rounded,
                                color: Colors.white, size: 28)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person_2_outlined,
                                color: Colors.white, size: 28)),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'like');
                            },
                            icon: Icon(Icons.favorite_border,
                                color: Colors.white, size: 28)),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'cart');
                            },
                            icon: Icon(Icons.card_travel,
                                color: Colors.white, size: 28)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container hotal(String img, String name, String add) {
    return Container(
      width: 250,
      height: 100,
      margin: EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100, blurRadius: 5, spreadRadius: 3)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage("$img"),
          ),
          SizedBox(width: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 140,
                      child: Text("$name",
                          style: Theme.of(context).textTheme.titleMedium)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("$add", style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget typefood(String title, String img, bool option) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Container(
        height: 35,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: option == false ? Colors.grey.shade200 : Colors.amber),
        child: Row(children: [
          SizedBox(width: 5),
          CircleAvatar(
              backgroundImage: AssetImage("$img"),
              radius: 18,
              backgroundColor: Colors.white),
          SizedBox(width: 10),
          Text(
            "$title",
            style: TextStyle(
                color: option == false ? Colors.black : Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          )
        ], mainAxisAlignment: MainAxisAlignment.start),
      ),
    );
  }
}
