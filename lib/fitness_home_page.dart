import 'package:fitness_app_ui/Model/fitness_model.dart';
import 'package:fitness_app_ui/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FitnessHomePage extends StatelessWidget {
  const FitnessHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Qaybta ugu weyn ee Bogga
      body: Padding(
        padding: const EdgeInsets.only(top: 66, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Qaybta sare ee header-ka (Favorite, Back Button, iyo Profile)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // IconButton si loogu celiyo Login page
                IconButton(
                  icon: const Icon(Icons.arrow_back,
                      size: 30, color: Colors.black),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, '/login_screen'); // Bedel '/login_screen'
                  },
                ),

                // Sawirka Favorite
                Image.asset(
                  "Images/favorite.png",
                  height: 50,
                ),
                // Sawirka Profile
                Image.asset(
                  "Images/profile.png",
                  height: 90,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            // Qoraalka "Select Workout"
            const Text(
              " Select\n Workout",
              style: TextStyle(
                height: 1,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // Liiska Horizontal ee Emoji-ga (Workout categories)
            SizedBox(
              height: 110,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: userItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final fitness = userItems[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color.fromARGB(11, 0, 0, 0),
                          image: DecorationImage(
                            image: AssetImage(fitness.emojiImage),
                          ),
                        ),
                        height: 100,
                        width: 95,
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            // Liiska Vertical ee Workout Details
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: userItems.length,
                itemBuilder: (context, index) {
                  final fitness = userItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: fitness.color, // Animation ku salaysan midabka
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: fitness.color,
                        ),
                        height: 190,
                        width: 95,
                        child: GestureDetector(
                          // Marka la taabto Workout-ka
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(fitness: fitness),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              // Qeybta Faahfaahinta Workout-ka
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Magaca Workout-ka
                                  Text(
                                    fitness.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  // Tababaraha (Instructor)
                                  Text(
                                    "with ${fitness.instructor}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black45,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  // Button lagu muujinayo waqtiga tababarka
                                  Container(
                                    height: 45,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.play_arrow),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${fitness.time} min",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // Sawirka Workout-ka
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 190,
                                  width:
                                      MediaQuery.of(context).size.width / 2.1,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                    fitness.image,
                                  ))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
