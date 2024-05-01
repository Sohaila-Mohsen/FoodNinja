import 'package:cofood/core/components/app_nav_bar.dart';
import 'package:cofood/core/components/product_card.dart';
import 'package:cofood/core/components/search_bar.dart';
import 'package:cofood/core/style/app_colors.dart';
import 'package:cofood/models/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AppNavBar(
          homeFunction: () {},
          profileFunction: () {},
          settingFunction: () {},
          chatFunction: () {}),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Pattern.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 100),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    tileMode: TileMode.repeated,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.6),
                      Colors.white.withOpacity(0.8),
                      Colors.white.withOpacity(0.9),
                      Colors.white.withOpacity(1),
                      Colors.white,
                    ]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Find Your",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 31),
                          ),
                          Text(
                            "Favorite Food",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 31),
                          ),
                        ],
                      ),
                      Icon(Icons.notifications_none, color: mainColorLigtht),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: CustomSearchBar()),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromRGBO(249, 168, 77, 0.2)),
                          child: Image.asset(
                            "assets/images/filter.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Popular Restaurant",
                    style: TextStyle(
                        fontFamily: "BentonSans",
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 20),
                      itemCount: restaurants.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductCard(
                          cardText: restaurants[index].restaurantName,
                          imagePath: restaurants[index].restaurantLogoPath,
                          cardDeliveryTime:
                              restaurants[index].restaurantDeliveryTime,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
