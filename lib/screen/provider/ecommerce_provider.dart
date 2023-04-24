import 'package:ecommerce_app_ui/screen/modal/shopping_modal.dart';
import 'package:flutter/material.dart';

class Shoppingprovider extends ChangeNotifier {
  bool fast = false;
  bool fruit = false;
  bool dessert = false;
  bool drink = false;
List<Shoppingmodal> like=[];
  List<Shoppingmodal> filterlist=[
    //fastfood
    Shoppingmodal(
        name: "Manchurian",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 70,
        type: "dry",
        img: "assets/fastfood/manchurian.png"),
    Shoppingmodal(
        name: "Noodles",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 100,
        type: "Crunchi",
        img: "assets/fastfood/noodle.png"),
    Shoppingmodal(
        name: "Burger",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 70,
        type: "veg",
        img: "assets/fastfood/burger.png"),
    Shoppingmodal(
        name: "Pizza",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 150,
        type: "Margerita",
        img: "assets/fastfood/pizza.png"),
    Shoppingmodal(
        name: "chat puri",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 50,
        type: "Masala Chat",
        img: "assets/fastfood/chat.png"),
    Shoppingmodal(
        name: "Dhosa",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 120,
        type: "Masala Dhosa",
        img: "assets/fastfood/dhosa.png"),
    //Fruits
    Shoppingmodal(
        name: "Mango",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 50,
        type: "Kesar",
        img: "assets/fruits/mango.png"),
    Shoppingmodal(
        name: "apple",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 40,
        type: "",
        img: "assets/fruits/apple.png"),
    Shoppingmodal(
        name: "banana",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 30,
        type: "",
        img: "assets/fruits/banana.png"),
    Shoppingmodal(
        name: "Graps",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 80,
        type: "",
        img: "assets/fruits/graps.png"),
    Shoppingmodal(
        name: "Kiwi",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 70,
        type: "",
        img: "assets/fruits/kiwi.png"),
    Shoppingmodal(
        name: "WaterMelon",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 20,
        type: "",
        img: "assets/fruits/watermalon.png"),
    //dessert
    Shoppingmodal(
        name: "cake",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 70,
        type: "chocolate",
        img: "assets/dessert/cake.png"),
    Shoppingmodal(
        name: "muffins",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 100,
        type: "straberry",
        img: "assets/dessert/muffin.png"),
    Shoppingmodal(
        name: "candies",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 70,
        type: "mango",
        img: "assets/dessert/candi.png"),
    Shoppingmodal(
        name: "Frozen",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 150,
        type: "Cream",
        img: "assets/dessert/frozen.png"),
    Shoppingmodal(
        name: "Gelatin",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 50,
        type: "Jelly",
        img: "assets/dessert/galetin.png"),
    Shoppingmodal(
        name: "Donuts",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 120,
        type: "Chocolate",
        img: "assets/dessert/donut.png"),
    //drink
    Shoppingmodal(
        name: "Thums up",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 70,
        type: "Strong",
        img: "assets/drink/thumup.png"),
    Shoppingmodal(
        name: "Mazza",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 100,
        type: "Mango juice",
        img: "assets/drink/mazza.png"),
    Shoppingmodal(
        name: "Pepasi",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 70,
        type: "Strong",
        img: "assets/drink/pepasi.png"),
    Shoppingmodal(
        name: "Water",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 150,
        type: "auro",
        img: "assets/drink/water.png"),
    Shoppingmodal(
        name: "Milkshake",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 50,
        type: "All flavour",
        img: "assets/drink/milkshake.png"),
    Shoppingmodal(
        name: "Juice",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 120,
        type: "orange",
        img: "assets/drink/juice.png"),
  ];
  List<Shoppingmodal> productlist = [
    //fastfood
    Shoppingmodal(
        name: "Manchurian",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 70,
        type: "dry",
        img: "assets/fastfood/manchurian.png"),
    Shoppingmodal(
        name: "Noodles",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 100,
        type: "Crunchi",
        img: "assets/fastfood/noodle.png"),
    Shoppingmodal(
        name: "Burger",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 70,
        type: "veg",
        img: "assets/fastfood/burger.png"),
    Shoppingmodal(
        name: "Pizza",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 150,
        type: "Margerita",
        img: "assets/fastfood/pizza.png"),
    Shoppingmodal(
        name: "chat puri",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 50,
        type: "Masala Chat",
        img: "assets/fastfood/chat.png"),
    Shoppingmodal(
        name: "Dhosa",
        foodtype: "fastfood",
        like: false,
        qa: 1,
        price: 120,
        type: "Masala Dhosa",
        img: "assets/fastfood/dhosa.png"),
    //Fruits
    Shoppingmodal(
        name: "Mango",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 50,
        type: "Kesar",
        img: "assets/fruits/mango.png"),
    Shoppingmodal(
        name: "apple",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 40,
        type: "",
        img: "assets/fruits/apple.png"),
    Shoppingmodal(
        name: "banana",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 30,
        type: "",
        img: "assets/fruits/banana.png"),
    Shoppingmodal(
        name: "Graps",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 80,
        type: "",
        img: "assets/fruits/graps.png"),
    Shoppingmodal(
        name: "Kiwi",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 70,
        type: "",
        img: "assets/fruits/kiwi.png"),
    Shoppingmodal(
        name: "WaterMelon",
        foodtype: "fruits",
        like: false,
        qa: 1,
        price: 20,
        type: "",
        img: "assets/fruits/watermalon.png"),
    //dessert
    Shoppingmodal(
        name: "cake",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 70,
        type: "chocolate",
        img: "assets/dessert/cake.png"),
    Shoppingmodal(
        name: "muffins",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 100,
        type: "straberry",
        img: "assets/dessert/muffin.png"),
    Shoppingmodal(
        name: "candies",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 70,
        type: "mango",
        img: "assets/dessert/candi.png"),
    Shoppingmodal(
        name: "Frozen",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 150,
        type: "Cream",
        img: "assets/dessert/frozen.png"),
    Shoppingmodal(
        name: "Gelatin",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 50,
        type: "Jelly",
        img: "assets/dessert/galetin.png"),
    Shoppingmodal(
        name: "Donuts",
        foodtype: "dessert",
        like: false,
        qa: 1,
        price: 120,
        type: "Chocolate",
        img: "assets/dessert/donut.png"),
    //drink
    Shoppingmodal(
        name: "Thums up",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 70,
        type: "Strong",
        img: "assets/drink/thumup.png"),
    Shoppingmodal(
        name: "Mazza",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 100,
        type: "Mango juice",
        img: "assets/drink/mazza.png"),
    Shoppingmodal(
        name: "Pepasi",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 70,
        type: "Strong",
        img: "assets/drink/pepasi.png"),
    Shoppingmodal(
        name: "Water",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 150,
        type: "auro",
        img: "assets/drink/water.png"),
    Shoppingmodal(
        name: "Milkshake",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 50,
        type: "All flavour",
        img: "assets/drink/milkshake.png"),
    Shoppingmodal(
        name: "Juice",
        foodtype: "drink",
        like: false,
        qa: 1,
        price: 120,
        type: "orange",
        img: "assets/drink/juice.png"),
  ];
  List<Shoppingmodal> cartlist=[];

  void fastfood() {
    fast = true;
    fruit = false;
    dessert = false;
    drink = false;
    filterlist.clear();
    for(int i=0;i<productlist.length;i++)
      {
        if(productlist[i].foodtype=="fastfood")
          {
            filterlist.add(productlist[i]);
          }
      }
    notifyListeners();
  }

  void fruitsop() {
    fast = false;
    fruit = true;
    dessert = false;
    drink = false;
    filterlist.clear();
    for(int i=0;i<productlist.length;i++)
    {
      if(productlist[i].foodtype=="fruits")
      {
        filterlist.add(productlist[i]);
      }
    }
    notifyListeners();
  }

  void dessertop() {
    fast = false;
    fruit = false;
    dessert = true;
    drink = false;
    filterlist.clear();
    for(int i=0;i<productlist.length;i++)
    {
      if(productlist[i].foodtype=="dessert")
      {
        filterlist.add(productlist[i]);
      }
    }
    notifyListeners();
  }

  void drinkop() {
    fast = false;
    fruit = false;
    dessert = false;
    drink = true;
    filterlist.clear();
    for(int i=0;i<productlist.length;i++)
    {
      if(productlist[i].foodtype=="drink")
      {
        filterlist.add(productlist[i]);
      }
    }
    notifyListeners();
  }

  void likeitem(int index) {
    if (filterlist[index].like == true) {
      Shoppingmodal s = filterlist[index];
      Shoppingmodal update = Shoppingmodal(
          img: s.img,
          type: s.type,
          price: s.price,
          qa: s.qa,
          like: productlist[index].like = false,
          foodtype: s.foodtype,
          name: s.name,
          data: s.data);
      filterlist[index] = update;
      like.removeAt(index);
      notifyListeners();
      // productlist[index].like=false;
    } else {
      Shoppingmodal s = filterlist[index];
      Shoppingmodal update = Shoppingmodal(
          img: s.img,
          type: s.type,
          price: s.price,
          qa: s.qa,
          like: productlist[index].like = true,
          foodtype: s.foodtype,
          name: s.name,
          data: s.data);
      filterlist[index] = update;
      like.add(filterlist[index]);
      notifyListeners();
      // productlist[index].like=true;
    }
  }

  void increment(int index)
  {
    Shoppingmodal s=filterlist[index];
    Shoppingmodal update=Shoppingmodal(data: s.data,name: s.name,foodtype: s.foodtype,like: s.like,price: s.price
    ,img: s.img,type: s.type,qa: s.qa!+1);
    filterlist[index]=update;
    notifyListeners();
  }

  void decrement(int index){
    if(filterlist[index].qa!>=1)
    {
      Shoppingmodal s=filterlist[index];
      Shoppingmodal update=Shoppingmodal(data: s.data,name: s.name,foodtype: s.foodtype,like: s.like,price: s.price
          ,img: s.img,type: s.type,qa: s.qa!-1);
      filterlist[index]=update;
    }
    else if(filterlist[index].qa==1)
      {
        filterlist[index].qa=1;
      }
    notifyListeners();
  }

  void cartincrement(int index)
  {
    Shoppingmodal s=cartlist[index];
    Shoppingmodal update=Shoppingmodal(data: s.data,name: s.name,foodtype: s.foodtype,like: s.like,price: s.price
        ,img: s.img,type: s.type,qa: s.qa!+1);
    cartlist[index]=update;
    notifyListeners();
  }

  void cartdecrement(int index)
  {
    Shoppingmodal s=cartlist[index];
    if(s.qa==1)
    {
      delete(index);
    }
    else
    {
      Shoppingmodal update=Shoppingmodal(data: s.data,name: s.name,foodtype: s.foodtype,like: s.like,price: s.price
          ,img: s.img,type: s.type,qa: s.qa!-1);
      cartlist[index]=update;
    }
    notifyListeners();
  }

  void delete(int index)
  {
    cartlist.removeAt(index);
    notifyListeners();
  }
  bool deleteitem=false;
  void cart_delete_add()
  {
    if(deleteitem==true)
      {
        deleteitem=false;
      }
    else
      {
        deleteitem=true;
      }
    notifyListeners();
  }


  double subtotal=0;
  double tax=1;
  double total=0;

  void bill()
  {
    for(int i=0;i<cartlist.length;i++)
      {
        subtotal=subtotal+cartlist[i].price!;
        tax=tax*cartlist[i].qa!;
      }

    total=subtotal+tax;
  }
}
