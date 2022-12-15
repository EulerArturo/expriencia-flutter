import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Widgets/banner.dart';
import '../Widgets/cart_total.dart';
import 'product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      Stack(
        children: [buildProfileImage(), customAppBar()],
      ),
      const SizedBox(
        height: 60,
      ),
      const Text("Grupo 14, NRC-2287",
          style: TextStyle(
              fontSize: 25.0,
              color: Colors.blueGrey,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w400)),
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Universidad del Norte",
        style: TextStyle(
            fontSize: 18.0,
            color: Colors.black45,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w300),
      ),
      CartTotal(),
      logo()
    ]));
  }

  Widget buildProfileImage() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: const [
        CustomBanner(200),
        CircleAvatar(
          backgroundImage:
              NetworkImage("https://randomuser.me/api/portraits/men/75.jpg"),
          radius: 60.0,
        )
      ],
    );
  }

  Widget customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Get.to(() => ProductList(),
                transition: Transition.circularReveal,
                duration: const Duration(seconds: 1)),
            child: const Icon(
              Icons.shopping_cart,
              size: 50,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }

  Widget logo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Logotipo_de_la_Universidad_del_Norte.svg/2560px-Logotipo_de_la_Universidad_del_Norte.svg.png',
              width: 180,
              height: 45,
              fit: BoxFit.fill),
        )
      ],
    );
  }
}
