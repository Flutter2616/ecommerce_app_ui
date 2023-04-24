import 'package:ecommerce_app_ui/screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Likescreen extends StatefulWidget {
  const Likescreen({Key? key}) : super(key: key);

  @override
  State<Likescreen> createState() => _LikescreenState();
}

class _LikescreenState extends State<Likescreen> {
  @override
  Widget build(BuildContext context) {
    sf = Provider.of(context, listen: false);
    st = Provider.of(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Like Product",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 25)),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          leading: Image.asset("${sf!.like[index].img}",
                              width: 60, height: 60, fit: BoxFit.fill),
                          title: Text("${sf!.like[index].name}",
                              style: Theme.of(context).textTheme.titleMedium),
                          subtitle: Text(
                              "\$${st!.like[index].price! * st!.like[index].qa!} x${sf!.like[index].qa}"),
                          tileColor: Colors.white,
                        ),
                      );
                    },
                    itemCount: st!.like.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
