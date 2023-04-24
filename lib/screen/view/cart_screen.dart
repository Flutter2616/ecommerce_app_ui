import 'package:ecommerce_app_ui/screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    sf = Provider.of(context, listen: false);
    st = Provider.of(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () =>
                                Navigator.pushReplacementNamed(context, 'home'),
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
                                sf!.cart_delete_add();
                              },
                              icon: st!.deleteitem == true
                                  ? Icon(Icons.queue_outlined,
                                      color: Colors.black, size: 25)
                                  : Icon(Icons.delete,
                                      color: Colors.black, size: 25))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("My",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    Text("Cart List",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.black)),
                    SizedBox(
                      width: double.infinity,
                      height: 400,
                      child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: ListTile(
                                leading: Image.asset(
                                    "${sf!.cartlist[index].img}",
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.fill),
                                title: Text("${sf!.cartlist[index].name}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                                subtitle: Text(
                                    "\$${st!.cartlist[index].price! * st!.cartlist[index].qa!} x${sf!.cartlist[index].qa}"),
                                tileColor: Colors.white,
                                trailing: st!.deleteitem == true
                                    ? IconButton(
                                        onPressed: () {
                                          sf!.delete(index);
                                        },
                                        icon: Icon(Icons.delete,
                                            color: Colors.red))
                                    : Container(
                                        width: 35,
                                        height: 56,
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                sf!.cartincrement(index);
                                              },
                                              child: Container(
                                                  width: 35,
                                                  height: 28,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color:
                                                          Colors.grey.shade500),
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.black,
                                                  )),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10)),
                                                  color: Colors.black),
                                              alignment: Alignment.topCenter,
                                              child: IconButton(
                                                  onPressed: () {
                                                    sf!.cartdecrement(index);
                                                  },
                                                  icon: Icon(
                                                    Icons.remove,
                                                    color: Colors.white,
                                                  )),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(10))),
                              ),
                            );
                          },
                          physics: BouncingScrollPhysics(),
                          itemCount: sf!.cartlist.length),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        Text("\$${st!.subtotal}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Est.Tax",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        Text("${st!.tax}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        Text("Free",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey))
                      ],
                    ),
                    Divider(color: Colors.grey, height: 1, thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        Text("\$${st!.total}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey))
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        sf!.bill();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          "Placed Order Successfully",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),margin: EdgeInsets.all(10),behavior: SnackBarBehavior.floating,duration: Duration(seconds: 2),backgroundColor: Colors.green.shade500,));
                        st!.cartlist.clear();
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("Checkout",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
