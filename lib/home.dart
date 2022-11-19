import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:work/components/popup_menu.dart';
import 'package:work/config/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List cars = [
      {"title": "حجم كبير", "asset": "assets/icons/Car 3.svg"},
      {"title": "حجم وسط", "asset": "assets/icons/Car 2.svg"},
      {"title": "حجم صغير", "asset": "assets/icons/Car 1.svg"}
    ];

    List menuItems = [
      {"title": "الرئيسية", "asset": "assets/icons/Home.svg"},
      {"title": "الطلبات", "asset": "assets/icons/Order.svg"},
      {"title": "من نحن", "asset": "assets/icons/About US.svg"},
      {"title": "إتصل بنا", "asset": "assets/icons/Phone.svg"},
      {"title": "الدعم الفني", "asset": "assets/icons/Support.svg"},
      {"title": "تسجيل الخروج", "asset": "assets/icons/Sign out.svg"}
    ];

    int? selectedIndex;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            IconButton(
                icon: SvgPicture.asset("assets/icons/Alerts.svg"),
                onPressed: () {}),
          ],
        ),
        actions: [
          const Align(
              alignment: Alignment.center,
              child: Text(Constants.home, style: TextStyle(color: Colors.black))),
          PopupMenu(
              menuList : [
                PopupMenuItem(
                  child: SizedBox(
                    height: height * 0.8,
                    width: width * 0.28,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Positioned(
                          right: 8,
                          child: Row(
                            children: [
                            const Text( Constants.home ,style: TextStyle(color: Colors.black)),
                            SvgPicture.asset("assets/icons/Home.svg")
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Text( Constants.ordersText ,style: TextStyle(color: Colors.black)),
                            SvgPicture.asset("assets/icons/Order.svg")
                          ],
                        ),
                        Row(
                          children: [
                            const Text( Constants.aboutUsText ,style: TextStyle(color: Colors.black)),
                            SvgPicture.asset("assets/icons/About US.svg")
                          ],
                        ),
                        Row(
                          children: [
                            const Text( Constants.callText ,style: TextStyle(color: Colors.black)),
                            SvgPicture.asset("assets/icons/Phone.svg")
                          ],
                        ),
                        Row(
                          children: [
                            const Text( Constants.suppText ,style: TextStyle(color: Colors.black)),
                            SvgPicture.asset("assets/icons/Support.svg")
                          ],
                        ),
                        Row(
                          children: [
                            const Text( Constants.logout ,style: TextStyle(color: Colors.black)),
                            SvgPicture.asset("assets/icons/Sign out.svg")
                          ],
                        ),

                      ],
                    ),
                  ),
                    // child: ListView.builder(
                    //
                    //   scrollDirection: Axis.vertical,
                    //   itemCount: 6,
                    //   itemBuilder: (context, index) {
                    //     return ListTile(
                    //       title: Text(menuItems[index]["title"]),
                    //       leading: SvgPicture.asset(menuItems[index]["asset"]),
                    //     );
                    //   },
                    // )
                )
              ],
              icon: SvgPicture.asset("assets/icons/Menu.svg"),
            ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/Location.svg"),
              onPressed: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                    isScrollControlled: false,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: height * 0.13,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return SizedBox(
                                    height: height * 0.13,
                                    width: width * 0.28,
                                    child: InkWell(
                                      customBorder: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color: selectedIndex == index
                                                  ? Constants.violet
                                                  : Colors.white,
                                              width: 5.0)),
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Card(
                                        elevation: 2,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            SvgPicture.asset(
                                                cars[index]["asset"]), // icon
                                            Text(cars[index]["title"]), // text
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),

                            MaterialButton(
                              onPressed: () {},
                              child: const Text("التالي"),
                            )
                          ],
                        ),
                      );
                    });
              }),
        ],
      ),
    );
  }
}
